import json
import time

# 读取准备好的数据
with open('/root/.openclaw/workspace/prepared_records.json', 'r') as f:
    data = json.load(f)

records = data['records']
app_token = data['app_token']
table_id = data['table_id']

# 输出导入命令列表
commands = []
for r in records:
    fields = r['fields']
    cid = r['候选人ID']
    
    # 构建命令参数
    cmd_parts = []
    for key, value in fields.items():
        if isinstance(value, str):
            # 转义特殊字符
            val = value.replace('"', '\\"').replace("'", "\\'")
            cmd_parts.append(f'"{key}": "{val}"')
        elif isinstance(value, (int, float)):
            cmd_parts.append(f'"{key}": {value}')
    
    fields_json = "{ " + ", ".join(cmd_parts) + " }"
    
    cmd = f"feishu_bitable_create_record --app_token {app_token} --table_id {table_id} --fields '{fields_json}'"
    commands.append({"id": cid, "cmd": cmd})

# 保存命令列表
with open('/root/.openclaw/workspace/import_commands.json', 'w') as f:
    json.dump(commands, f, indent=2)

print(f"生成了 {len(commands)} 条导入命令")
print("命令已保存到 import_commands.json")
