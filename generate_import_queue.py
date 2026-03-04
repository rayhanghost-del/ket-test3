import json
import time

# 读取所有记录
with open('records_to_import.json', 'r', encoding='utf-8') as f:
    records = json.load(f)

app_token = 'O7WjbMQEaaWGTlsnvNMcoWkXnde'
table_id = 'tblIqk2EUj832N2p'

# 已导入的记录ID（避免重复）
imported_ids = {'R22001', 'R22002', 'R22003', 'R22004', 'R22006', 'R22007', 
                'R22008', 'R22010', 'R22011', 'R22012', 'R22013', 'R22014', 
                'R22015', 'R22016', 'R22017'}

success_count = len(imported_ids)
fail_count = 0

print(f"开始导入，总记录数: {len(records)}")
print(f"已导入: {success_count}条")
print(f"待导入: {len(records) - success_count}条")
print()

for i, record in enumerate(records):
    candidate_id = record.get('候选人ID', '')
    
    # 跳过已导入的
    if candidate_id in imported_ids:
        continue
    
    # 构建fields - 只包含非空值
    fields = {k: v for k, v in record.items() if v is not None and v != ''}
    
    # 输出导入信息（主agent可以捕获并调用工具）
    print(f"IMPORT|{candidate_id}|{record.get('姓名', '')}|{json.dumps(fields, ensure_ascii=False)}")
    
    # 间隔0.3秒
    time.sleep(0.3)

print()
print(f"导入队列生成完成")
