#!/bin/bash

# 飞书表格信息
APP_TOKEN="O7WjbMQEaaWGTlsnvNMcoWkXnde"
TABLE_ID="tblIqk2EUj832N2p"

# 读取过滤后的记录文件
RECORDS_FILE="/root/.openclaw/workspace/records_to_import_filtered.json"

# 统计
TOTAL=$(cat "$RECORDS_FILE" | python3 -c "import json,sys; print(len(json.load(sys.stdin)))")
SUCCESS=0
FAILED=0
FAILED_IDS=""

echo "开始导入 $TOTAL 条记录..."
echo "============================================================"

# 使用Python处理每条记录
python3 << 'PYTHON_SCRIPT'
import json
import time
import subprocess
import sys

with open('/root/.openclaw/workspace/records_to_import_filtered.json', 'r') as f:
    records = json.load(f)

app_token = "O7WjbMQEaaWGTlsnvNMcoWkXnde"
table_id = "tblIqk2EUj832N2p"

success_count = 0
failed_count = 0
failed_list = []

def convert_value(value, field_type):
    """转换值为JSON格式"""
    if value is None:
        return None
    if field_type == "number":
        try:
            return float(value)
        except:
            return None
    elif field_type == "date":
        try:
            return int(value)
        except:
            return None
    else:
        return str(value)

for i, record in enumerate(records):
    record_id = record.get('候选人ID', f'Unknown_{i}')
    
    # 构建fields对象
    fields = {}
    
    # 文本字段
    text_fields = ["候选人ID", "姓名", "中介", "国籍", "专业", "资格证", "教学经验", 
                   "目前所在地", "上岗时间", "签证类型", "工签职位", "意向城市", 
                   "意向职位", "可任教内容", "薪资期望", "跟进记录", "联系方式"]
    for f in text_fields:
        if f in record and record[f]:
            fields[f] = str(record[f])
    
    # 单选字段
    if "性别" in record and record["性别"]:
        if record["性别"] in ["男", "女"]:
            fields["性别"] = record["性别"]
    
    if "肤色" in record and record["肤色"]:
        skin_map = {"白": "白", "黑": "黑", "棕": "棕", "浅黑": "浅黑", "黄": "亚裔"}
        if record["肤色"] in skin_map:
            fields["肤色"] = skin_map[record["肤色"]]
    
    if "学历" in record and record["学历"]:
        edu_map = {"本科": "本科", "硕士": "硕士", "博士": "博士", "MBA": "MBA"}
        if record["学历"] in edu_map:
            fields["学历"] = edu_map[record["学历"]]
    
    if "是否可转聘" in record and record["是否可转聘"]:
        transfer_map = {"可": "可转聘", "可转": "可转聘", "新办": "不可转聘"}
        if record["是否可转聘"] in transfer_map:
            fields["是否可转聘"] = transfer_map[record["是否可转聘"]]
    
    # 数字字段
    if "年龄" in record and record["年龄"]:
        try:
            fields["年龄"] = float(record["年龄"])
        except:
            pass
    
    # 日期字段
    if "更新日期" in record and record["更新日期"]:
        try:
            fields["更新日期"] = int(record["更新日期"])
        except:
            pass
    
    # 转换为JSON
    fields_json = json.dumps(fields, ensure_ascii=False)
    
    # 执行导入命令
    cmd = f'openclaw feishu_bitable_create_record --app_token {app_token} --table_id {table_id} --fields \'{fields_json}\''
    
    result = subprocess.run(cmd, shell=True, capture_output=True, text=True)
    
    if result.returncode == 0:
        success_count += 1
    else:
        failed_count += 1
        failed_list.append({"id": record_id, "error": result.stderr})
        print(f"  失败: {record_id} - {result.stderr}", file=sys.stderr)
    
    # 每50条报告进度
    if (i + 1) % 50 == 0:
        print(f"进度: {i + 1}/{len(records)} | 成功: {success_count} | 失败: {failed_count}")
    
    # 间隔0.3秒
    time.sleep(0.3)

# 最终报告
print("=" * 60)
print(f"导入完成!")
print(f"总计: {len(records)}")
print(f"成功: {success_count}")
print(f"失败: {failed_count}")

# 保存失败记录
if failed_list:
    with open('/root/.openclaw/workspace/failed_records.json', 'w') as f:
        json.dump(failed_list, f, ensure_ascii=False, indent=2)
    print(f"\n失败记录已保存到 failed_records.json")

# 保存报告
report = {
    "total": len(records),
    "success": success_count,
    "failed": failed_count,
    "failed_records": failed_list
}
with open('/root/.openclaw/workspace/import_report.json', 'w') as f:
    json.dump(report, f, ensure_ascii=False, indent=2)
print("导入报告已保存到 import_report.json")

PYTHON_SCRIPT
