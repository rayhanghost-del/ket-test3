#!/bin/bash

# 批量导入飞书表格脚本

app_token="O7WjbMQEaaWGTlsnvNMcoWkXnde"
table_id="tblIqk2EUj832N2p"
json_file="/root/.openclaw/workspace/records_to_import.json"

# 获取总记录数
total=$(python3 -c "import json; print(len(json.load(open('$json_file'))))")
echo "总记录数: $total"

success=0
fail=0

# 逐条导入
for i in $(seq 0 $((total-1))); do
    # 提取单条记录
    record=$(python3 -c "
import json
with open('$json_file') as f:
    records = json.load(f)
record = records[$i]
# 过滤掉null和空值
filtered = {k: v for k, v in record.items() if v is not None and v != ''}
print(json.dumps(filtered, ensure_ascii=False))
")
    
    # 导入到飞书
    result=$(openclaw feishu_bitable_create_record \
        --app_token "$app_token" \
        --table_id "$table_id" \
        --fields "$record" 2>&1)
    exit_code=$?
    
    if [ $? -eq 0 ]; then
        success=$((success+1))
        candidate_id=$(echo "$record" | python3 -c "import json,sys; print(json.load(sys.stdin).get('候选人ID',''))")
        name=$(echo "$record" | python3 -c "import json,sys; print(json.load(sys.stdin).get('姓名',''))")
        echo "[$((i+1))/$total] 成功: $candidate_id - $name"
    else
        fail=$((fail+1))
        candidate_id=$(echo "$record" | python3 -c "import json,sys; print(json.load(sys.stdin).get('候选人ID',''))")
        name=$(echo "$record" | python3 -c "import json,sys; print(json.load(sys.stdin).get('姓名',''))")
        echo "[$((i+1))/$total] 失败: $candidate_id - $name"
        echo "  错误: $result"
    fi
    
    # 间隔0.3秒
    sleep 0.3
done

echo ""
echo "导入完成: 成功 $success, 失败 $fail"
