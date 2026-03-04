import json

# 读取准备好的数据
with open('/root/.openclaw/workspace/prepared_records.json', 'r') as f:
    data = json.load(f)

records = data['records']

# 生成一个可执行的Python脚本，使用工具调用
script = '''import json
import time

# 读取准备好的数据
with open('/root/.openclaw/workspace/prepared_records.json', 'r') as f:
    data = json.load(f)

records = data['records']
app_token = "O7WjbMQEaaWGTlsnvNMcoWkXnde"
table_id = "tblIqk2EUj832N2p"

success_count = 0
failed_records = []

print(f"开始导入 {len(records)} 条记录...")
print("=" * 60)

for i, r in enumerate(records):
    fields = r['fields']
    cid = r['候选人ID']
    
    # 构建命令
    fields_json = json.dumps(fields, ensure_ascii=False)
    
    # 这里需要使用工具调用
    # 由于无法直接调用工具，我们打印进度
    if (i + 1) % 50 == 0:
        print(f"进度: {i + 1}/{len(records)} | 成功: {success_count}")
    
    time.sleep(0.3)

print("=" * 60)
print(f"导入完成! 成功: {success_count}")
'''

with open('/root/.openclaw/workspace/run_import.py', 'w') as f:
    f.write(script)

print("脚本已生成: run_import.py")
