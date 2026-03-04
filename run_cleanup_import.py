#!/usr/bin/env python3
"""
飞书表格数据清理和重新导入脚本
"""

import json
import time
import requests

# 配置
APP_ID = 'cli_a92ad62e98785cc4'
APP_SECRET = 's8cpXA3aWEixdlOSHivIqbn8oCLtGztu'
APP_TOKEN = 'O7WjbMQEaaWGTlsnvNMcoWkXnde'
TABLE_ID = 'tblIqk2EUj832N2p'
DATA_FILE = '/root/.openclaw/workspace/records_to_import_final.json'
BASE_URL = 'https://open.feishu.cn/open-apis/bitable/v1/apps'

# 从文件加载record_ids
RECORD_IDS_FILE = '/root/.openclaw/workspace/all_record_ids.json'

def get_tenant_token():
    """获取tenant_access_token"""
    url = 'https://open.feishu.cn/open-apis/auth/v3/tenant_access_token/internal'
    resp = requests.post(url, json={'app_id': APP_ID, 'app_secret': APP_SECRET})
    result = resp.json()
    if result.get('code') != 0:
        raise Exception(f"获取token失败: {result}")
    return result['tenant_access_token']

def delete_record(token, record_id):
    """删除单条记录"""
    url = f'{BASE_URL}/{APP_TOKEN}/tables/{TABLE_ID}/records/{record_id}'
    headers = {'Authorization': f'Bearer {token}'}
    try:
        resp = requests.delete(url, headers=headers)
        result = resp.json()
        return result.get('code') == 0
    except Exception as e:
        print(f'  删除失败 {record_id}: {e}')
        return False

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
        
        # 处理数字类型字段
        if key in ['年龄'] and isinstance(value, (int, float)):
            if value == value:  # 检查NaN
                processed_fields[key] = value
        # 处理日期类型字段
        elif key == '更新日期' and isinstance(value, (int, float)):
            processed_fields[key] = int(value)
        # 其他字段作为文本
        else:
            processed_fields[key] = str(value) if value is not None else ""
    
    payload = {'fields': processed_fields}
    
    try:
        resp = requests.post(url, headers=headers, json=payload)
        result = resp.json()
        if result.get('code') != 0:
            return False, result.get('msg', 'Unknown error')
        return True, None
    except Exception as e:
        return False, str(e)

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
        deleted = 0
        failed = 0
        for i, rid in enumerate(record_ids):
            if delete_record(token, rid):
                deleted += 1
            else:
                failed += 1
            
            if (i + 1) % 50 == 0:
                print(f"   已删除 {i + 1}/{len(record_ids)} 条...")
            time.sleep(0.3)
        
        print(f"   删除完成: 成功 {deleted} 条, 失败 {failed} 条")
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
    imported = 0
    failed_import = 0
    for i, record in enumerate(records):
        success, error = create_record(token, record)
        if success:
            imported += 1
        else:
            failed_import += 1
            if failed_import <= 5:
                print(f"   导入失败 (候选人ID: {record.get('候选人ID', 'N/A')}): {error}")
        
        if (i + 1) % 50 == 0:
            print(f"   已导入 {i + 1}/{len(records)} 条...")
        time.sleep(0.3)
    
    print(f"   导入完成: 成功 {imported} 条, 失败 {failed_import} 条")
    
    # 最终报告
    print("\n" + "=" * 60)
    print("任务完成报告:")
    print(f"  - 删除旧记录: {deleted} 条")
    print(f"  - 成功导入新记录: {imported} 条")
    print(f"  - 最终表格记录总数: {imported} 条")
    print("=" * 60)

if __name__ == '__main__':
    main()
