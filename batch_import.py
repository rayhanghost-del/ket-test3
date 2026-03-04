#!/usr/bin/env python3
"""
飞书表格批量导入脚本
使用方法: python3 batch_import.py
"""

import json
import subprocess
import time
import sys

# 配置
APP_TOKEN = 'O7WjbMQEaaWGTlsnvNMcoWkXnde'
TABLE_ID = 'tblIqk2EUj832N2p'
JSON_FILE = 'records_to_import.json'

# 已导入的记录ID（避免重复）
IMPORTED_IDS = {
    'R22001', 'R22002', 'R22003', 'R22004', 'R22006', 'R22007', 
    'R22008', 'R22010', 'R22011', 'R22012', 'R22013', 'R22014', 
    'R22015', 'R22016', 'R22017'
}

def import_record(record):
    """导入单条记录"""
    fields = {k: v for k, v in record.items() if v is not None and v != ''}
    fields_json = json.dumps(fields, ensure_ascii=False)
    
    # 构建命令
    cmd = [
        'openclaw', 'feishu_bitable_create_record',
        '--app_token', APP_TOKEN,
        '--table_id', TABLE_ID,
        '--fields', fields_json
    ]
    
    result = subprocess.run(cmd, capture_output=True, text=True)
    return result.returncode == 0, result.stdout, result.stderr

def main():
    # 读取记录
    with open(JSON_FILE, 'r', encoding='utf-8') as f:
        records = json.load(f)
    
    total = len(records)
    success = len(IMPORTED_IDS)
    fail = 0
    
    print(f"开始导入")
    print(f"总记录: {total}")
    print(f"已导入: {success}")
    print(f"待导入: {total - success}")
    print()
    
    for i, record in enumerate(records):
        candidate_id = record.get('候选人ID', '')
        name = record.get('姓名', '')
        
        # 跳过已导入的
        if candidate_id in IMPORTED_IDS:
            continue
        
        # 导入
        ok, stdout, stderr = import_record(record)
        
        if ok:
            success += 1
            print(f"[{i+1}/{total}] 成功: {candidate_id} - {name}")
        else:
            fail += 1
            print(f"[{i+1}/{total}] 失败: {candidate_id} - {name}")
            if stderr:
                print(f"  错误: {stderr[:200]}")
        
        # 间隔0.3秒
        time.sleep(0.3)
    
    print()
    print(f"导入完成: 成功 {success}, 失败 {fail}")
    print(f"最终总数: {success}条")

if __name__ == '__main__':
    main()
