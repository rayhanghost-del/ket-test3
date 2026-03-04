import json
import time

# 读取准备好的数据
with open('/root/.openclaw/workspace/prepared_records.json', 'r') as f:
    data = json.load(f)

records = data['records']
app_token = data['app_token']
table_id = data['table_id']

# 统计
success_count = 0
failed_records = []

print(f"开始导入 {len(records)} 条记录...")
print("=" * 60)

# 导入前50条作为测试
batch_size = 50
batch_num = 1

for i, r in enumerate(records[:batch_size]):
    fields = r['fields']
    cid = r['候选人ID']
    
    # 这里我们打印命令而不是实际执行
    # 实际执行需要调用工具
    print(f"[{i+1}/{batch_size}] 准备导入: {cid} - {fields.get('姓名', 'N/A')}")

print(f"\n前 {batch_size} 条记录准备完成")
print(f"批次 {batch_num} 完成")
