#!/usr/bin/env python3
"""
飞书表格批量导入脚本 - 简化版
直接生成命令行输出，方便主agent捕获执行
"""

import json
import time

# 配置
APP_TOKEN = 'O7WjbMQEaaWGTlsnvNMcoWkXnde'
TABLE_ID = 'tblIqk2EUj832N2p'

# 已导入的记录ID
IMPORTED_IDS = {
    'R22001', 'R22002', 'R22003', 'R22004', 'R22006', 'R22007', 
    'R22008', 'R22009', 'R22010', 'R22011', 'R22012', 'R22013', 
    'R22014', 'R22015', 'R22016', 'R22017', 'R22018', 'R22019', 
    'R22020', 'R22021'
}

def main():
    # 读取记录
    with open('records_to_import.json', 'r', encoding='utf-8') as f:
        records = json.load(f)
    
    total = len(records)
    imported = len(IMPORTED_IDS)
    remaining = total - imported
    
    print(f"导入状态: 已导入 {imported}/{total}, 剩余 {remaining} 条")
    print()
    
    count = 0
    for record in records:
        candidate_id = record.get('候选人ID', '')
        
        # 跳过已导入的
        if candidate_id in IMPORTED_IDS:
            continue
        
        # 构建fields
        fields = {k: v for k, v in record.items() if v is not None and v != ''}
        
        # 输出工具调用格式
        print(f"TOOL_CALL|feishu_bitable_create_record|app_token={APP_TOKEN}|table_id={TABLE_ID}|fields={json.dumps(fields, ensure_ascii=False)}")
        
        count += 1
        if count % 50 == 0:
            print(f"PROGRESS|已生成 {count} 条调用")
        
        # 间隔
        time.sleep(0.01)
    
    print()
    print(f"完成: 共生成 {count} 条工具调用")

if __name__ == '__main__':
    main()
