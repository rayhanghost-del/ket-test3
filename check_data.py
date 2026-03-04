import json
import time

# 读取数据
with open('/root/.openclaw/workspace/records_to_import_filtered.json', 'r') as f:
    records = json.load(f)

print(f"记录总数: {len(records)}")
print(f"第一条: {records[0].get('候选人ID')}")
print(f"最后一条: {records[-1].get('候选人ID')}")

# 显示前3条记录的样本
print("\n前3条记录样本:")
for i, r in enumerate(records[:3]):
    print(f"  {i+1}. {r.get('候选人ID')} - {r.get('姓名')} - 性别:{r.get('性别')} - 学历:{r.get('学历')}")
