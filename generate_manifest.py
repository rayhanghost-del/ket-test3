import json
import time

# 读取准备好的数据
with open('/root/.openclaw/workspace/prepared_records.json', 'r') as f:
    data = json.load(f)

records = data['records']

# 生成工具调用列表
output = []
for i, r in enumerate(records):
    fields = r['fields']
    cid = r['候选人ID']
    
    entry = {
        "index": i + 1,
        "候选人ID": cid,
        "fields": fields
    }
    output.append(entry)

# 保存为导入清单
with open('/root/.openclaw/workspace/import_manifest.json', 'w', encoding='utf-8') as f:
    json.dump(output, f, ensure_ascii=False, indent=2)

print(f"生成了 {len(output)} 条导入记录")
print(f"数据已保存到 import_manifest.json")
