import json
import time

# 读取准备好的数据
with open('/root/.openclaw/workspace/prepared_records.json', 'r') as f:
    data = json.load(f)

records = data['records']

# 生成导入脚本
script_lines = []
script_lines.append("#!/bin/bash")
script_lines.append("")
script_lines.append("# 批量导入飞书表格")
script_lines.append("APP_TOKEN=\"O7WjbMQEaaWGTlsnvNMcoWkXnde\"")
script_lines.append("TABLE_ID=\"tblIqk2EUj832N2p\"")
script_lines.append("")
script_lines.append("SUCCESS=0")
script_lines.append("FAILED=0")
script_lines.append("")

for i, r in enumerate(records):
    fields = r['fields']
    cid = r['候选人ID']
    
    # 构建fields JSON
    fields_json = json.dumps(fields, ensure_ascii=False)
    # 转义单引号
    fields_json = fields_json.replace("'", "'\"'\"'")
    
    script_lines.append(f"# Record {i+1}: {cid}")
    script_lines.append(f"echo \"导入 {i+1}/{len(records)}: {cid}\"")
    script_lines.append(f"if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{fields_json}' > /dev/null 2>&1; then")
    script_lines.append("    SUCCESS=$((SUCCESS+1))")
    script_lines.append("else")
    script_lines.append("    FAILED=$((FAILED+1))")
    script_lines.append(f"    echo \"失败: {cid}\"")
    script_lines.append("fi")
    script_lines.append("sleep 0.3")
    script_lines.append("")

script_lines.append("echo \"导入完成! 成功: $SUCCESS, 失败: $FAILED\"")

with open('/root/.openclaw/workspace/batch_import.sh', 'w', encoding='utf-8') as f:
    f.write('\n'.join(script_lines))

print("脚本已生成: batch_import.sh")
print(f"包含 {len(records)} 条记录的导入命令")
