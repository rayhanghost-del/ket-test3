import json
import time
import requests

# 读取记录
with open('records_to_import.json', 'r', encoding='utf-8') as f:
    records = json.load(f)

# 飞书API配置
app_token = 'O7WjbMQEaaWGTlsnvNMcoWkXnde'
table_id = 'tblIqk2EUj832N2p'

# 获取tenant_access_token
def get_tenant_token():
    # 使用openclaw获取token
    import subprocess
    result = subprocess.run(
        ['openclaw', 'agent', '--local', '--message', '获取飞书tenant_access_token'],
        capture_output=True, text=True
    )
    return None

# 由于无法直接获取token，改用逐条调用feishu_bitable_create_record工具
# 通过向gateway发送请求

success_count = 0
fail_count = 0
total = len(records)

print(f"开始导入，总记录数: {total}")

for i, record in enumerate(records):
    # 构建fields - 只包含非空值
    fields = {k: v for k, v in record.items() if v is not None and v != ''}
    
    candidate_id = record.get("候选人ID", "")
    name = record.get("姓名", "")
    
    # 这里我们需要调用工具，但由于是在subagent中，我们直接输出进度
    # 让主agent来处理实际的导入
    print(f"[{i+1}/{total}] 准备导入: {candidate_id} - {name}")
    print(f"FIELDS:{json.dumps(fields, ensure_ascii=False)}")
    
    # 间隔0.3秒
    time.sleep(0.3)

print(f"\n准备完成，共 {total} 条记录待导入")
