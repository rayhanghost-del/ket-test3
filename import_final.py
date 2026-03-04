#!/usr/bin/env python3
"""
飞书表格数据导入脚本 - 简化版
直接导入新记录，跳过删除步骤（因为删除太慢）
"""

import json
import requests
import time
import sys

# 配置
APP_ID = 'cli_a92ad62e98785cc4'
APP_SECRET = 's8cpXA3aWEixdlOSHivIqbn8oCLtGztu'
APP_TOKEN = 'O7WjbMQEaaWGTlsnvNMcoWkXnde'
TABLE_ID = 'tblIqk2EUj832N2p'
DATA_FILE = '/root/.openclaw/workspace/records_to_import_final.json'

def log(msg):
    print(msg, flush=True)
    sys.stdout.flush()

def get_token():
    url = 'https://open.feishu.cn/open-apis/auth/v3/tenant_access_token/internal'
    resp = requests.post(url, json={'app_id': APP_ID, 'app_secret': APP_SECRET})
    return resp.json()['tenant_access_token']

def import_record(token, record):
    url = f'https://open.feishu.cn/open-apis/bitable/v1/apps/{APP_TOKEN}/tables/{TABLE_ID}/records'
    headers = {
        'Authorization': f'Bearer {token}',
        'Content-Type': 'application/json'
    }
    
    # 处理字段
    fields = {}
    for key, value in record.items():
        if value is None or value == '':
            continue
        if key in ['年龄'] and isinstance(value, (int, float)):
            if value == value:
                fields[key] = value
        elif key == '更新日期' and isinstance(value, (int, float)):
            fields[key] = int(value)
        else:
            fields[key] = str(value) if value is not None else ""
    
    try:
        resp = requests.post(url, headers=headers, json={'fields': fields}, timeout=5)
        result = resp.json()
        return result.get('code') == 0, result.get('msg', '')
    except Exception as e:
        return False, str(e)

def main():
    log("=" * 60)
    log("飞书表格数据导入")
    log("=" * 60)
    
    # 获取token
    log("\n获取token...")
    token = get_token()
    log("成功获取token")
    
    # 加载数据
    log("\n加载数据文件...")
    with open(DATA_FILE, 'r', encoding='utf-8') as f:
        records = json.load(f)
    log(f"共 {len(records)} 条记录待导入")
    
    # 导入记录
    log("\n开始导入...")
    imported = 0
    failed = 0
    
    for i, record in enumerate(records):
        success, error = import_record(token, record)
        if success:
            imported += 1
        else:
            failed += 1
            if failed <= 5:
                log(f"  失败 {record.get('候选人ID', 'N/A')}: {error}")
        
        if (i + 1) % 50 == 0:
            log(f"  进度: {i+1}/{len(records)} (成功{imported}, 失败{failed})")
        
        time.sleep(0.15)  # 控制速率
    
    log(f"\n导入完成!")
    log(f"  成功: {imported} 条")
    log(f"  失败: {failed} 条")
    
    # 保存结果
    with open('import_result_final.json', 'w') as f:
        json.dump({'imported': imported, 'failed': failed, 'total': len(records)}, f)
    log("\n结果已保存到 import_result_final.json")

if __name__ == '__main__':
    main()
