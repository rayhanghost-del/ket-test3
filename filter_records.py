import json
import time

# 读取数据文件
with open('/root/.openclaw/workspace/records_to_import.json', 'r', encoding='utf-8') as f:
    records = json.load(f)

# 过滤掉第一条记录(R22001)，从R22002开始
records_to_import = [r for r in records if r.get('候选人ID') != 'R22001']

# 按候选人ID排序，确保顺序正确
records_to_import.sort(key=lambda x: x.get('候选人ID', ''))

print(f"总共需要导入 {len(records_to_import)} 条记录")
print(f"第一条: {records_to_import[0].get('候选人ID')}")
print(f"最后一条: {records_to_import[-1].get('候选人ID')}")

# 保存处理后的记录
with open('/root/.openclaw/workspace/records_to_import_filtered.json', 'w', encoding='utf-8') as f:
    json.dump(records_to_import, f, ensure_ascii=False, indent=2)

print("数据已保存到 records_to_import_filtered.json")
