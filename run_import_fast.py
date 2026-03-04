#!/usr/bin/env python3
"""
飞书表格数据清理和重新导入脚本 - 批量操作版本
"""

import json
import time
import requests
from concurrent.futures import ThreadPoolExecutor, as_completed

# 配置
APP_ID = 'cli_a92ad62e98785cc4'
APP_SECRET = 's8cpXA3aWEixdlOSHivIqbn8oCLtGztu'
APP_TOKEN = 'O7WjbMQEaaWGTlsnvNMcoWkXnde'
TABLE_ID = 'tblIqk2EUj832N2p'
DATA_FILE = '/root/.openclaw/workspace/records_to_import_final.json'
BASE_URL = 'https://open.feishu.cn/open-apis/bitable/v1/apps'
RECORD_IDS_FILE = '/root/.openclaw/workspace/all_record_ids.json'

def get_tenant_token():
    """获取tenant_access_token"""
    url = 'https://open.feishu.cn/open-apis/auth/v3/tenant_access_token/internal'
    resp = requests.post(url, json={'app_id': APP_ID, 'app_secret': APP_SECRET})
    result = resp.json()
    if result.get('code') != 0:
        raise Exception(f"获取token失败: {result}")
    return result['tenant_access_token']

def delete_records_batch(token, record_ids):
    """批量删除记录 - 使用多线程"""
    headers = {'Authorization': f'Bearer {token}'}
    deleted = 0
    failed = 0
    
    def delete_one(rid):
        url = f'{BASE_URL}/{APP_TOKEN}/tables/{TABLE_ID}/records/{rid}'
        try:
            resp = requests.delete(url, headers=headers, timeout=10)
            return resp.json().get('code') == 0
        except:
            return False
    
    # 使用线程池，但控制并发数
    with ThreadPoolExecutor(max_workers=5) as executor:
        futures = {executor.submit(delete_one, rid): rid for rid in record_ids}
        for i, future in enumerate(as_completed(futures)):
            if future.result():
                deleted += 1
            else:
                failed += 1
            if (i + 1) % 50 == 0:
                print(f"   已处理 {i + 1}/{len(record_ids)} 条删除...")
            time.sleep(0.1)  # 控制速率
    
    return deleted, failed

def create_record(token, fields):
    """创建单条记录"""
    url = f'{BASE_URL}/{APP_TOKEN}/tables/{TABLE_ID}/records'
    headers = {
        'Authorization': f'Bearer {token}',
        'Content-Type': 'application/json'
    }
    
    # 处理字段
    processed_fields = {}
    for key, value in fields.items():
        if value is None or value == '':
            continue
        
        if key in ['年龄'] and isinstance(value, (int, float)):
            if value == value:  # 检查NaN
                processed_fields[key] = value
        elif key == '更新日期' and isinstance(value, (int, float)):
            processed_fields[key] = int(value)
        else:
            processed_fields[key] = str(value) if value is not None else ""
    
    payload = {'fields': processed_fields}
    
    try:
        resp = requests.post(url, headers=headers, json=payload, timeout=10)
        result = resp.json()
        if result.get('code') != 0:
            return False, result.get('msg', 'Unknown error')
        return True, None
    except Exception as e:
        return False, str(e)

def import_records_batch(token, records):
    """批量导入记录"""
    imported = 0
    failed = 0
    
    for i, record in enumerate(records):
        success, error = create_record(token, record)
        if success:
            imported += 1
        else:
            failed += 1
            if failed <= 5:
                print(f"   导入失败 (候选人ID: {record.get('候选人ID', 'N/A')}): {error}")
        
        if (i + 1) % 50 == 0:
            print(f"   已导入 {i + 1}/{len(records)} 条...")
        time.sleep(0.2)  # 控制速率
    
    return imported, failed

def main():
    print("=" * 60)
    print("飞书表格数据清理和重新导入")
    print("=" * 60)
    
    # 获取token
    print("\n1. 获取tenant_access_token...")
    token = get_tenant_token()
    print("   成功获取token")
    
    # 加载record_ids
    print("\n2. 加载需要删除的record_ids...")
    try:
        with open(RECORD_IDS_FILE, 'r') as f:
            record_ids = json.load(f)
        print(f"   共 {len(record_ids)} 条记录需要删除")
    except Exception as e:
        print(f"   加载失败: {e}")
        record_ids = []
    
    # 删除旧记录
    if record_ids:
        print("\n3. 开始删除旧记录...")
        deleted, failed_del = delete_records_batch(token, record_ids)
        print(f"   删除完成: 成功 {deleted} 条, 失败 {failed_del} 条")
    else:
        print("\n3. 没有旧记录需要删除")
        deleted = 0
    
    # 加载新数据
    print("\n4. 加载本地数据文件...")
    try:
        with open(DATA_FILE, 'r', encoding='utf-8') as f:
            records = json.load(f)
        print(f"   成功加载 {len(records)} 条记录")
    except Exception as e:
        print(f"   加载失败: {e}")
        return
    
    # 导入新记录
    print("\n5. 开始导入新记录...")
    imported, failed_imp = import_records_batch(token, records)
    print(f"   导入完成: 成功 {imported} 条, 失败 {failed_imp} 条")
    
    # 最终报告
    print("\n" + "=" * 60)
    print("任务完成报告:")
    print(f"  - 删除旧记录: {deleted} 条")
    print(f"  - 成功导入新记录: {imported} 条")
    print(f"  - 最终表格记录总数: {imported} 条")
    print("=" * 60)
    
    # 保存报告
    report = {
        "deleted": deleted,
        "imported": imported,
        "total": imported,
        "timestamp": time.strftime("%Y-%m-%d %H:%M:%S")
    }
    with open('/root/.openclaw/workspace/import_report.json', 'w') as f:
        json.dump(report, f, indent=2)
    print("\n报告已保存到 import_report.json")

if __name__ == '__main__':
    main()
