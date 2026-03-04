import json
import time
import os

# 读取数据
with open('/root/.openclaw/workspace/records_to_import_filtered.json', 'r') as f:
    records = json.load(f)

app_token = "O7WjbMQEaaWGTlsnvNMcoWkXnde"
table_id = "tblIqk2EUj832N2p"

# 单选字段映射
skin_map = {"白": "白", "黑": "黑", "棕": "棕", "浅黑": "浅黑", "黄": "亚裔"}
edu_map = {"本科": "本科", "硕士": "硕士", "博士": "博士", "MBA": "MBA"}
transfer_map = {"可": "可转聘", "可转": "可转聘", "新办": "不可转聘"}

def build_fields(record):
    """构建飞书表格字段"""
    fields = {}
    
    # 文本字段
    text_fields = ["候选人ID", "姓名", "中介", "国籍", "专业", "资格证", "教学经验", 
                   "目前所在地", "上岗时间", "签证类型", "工签职位", "意向城市", 
                   "意向职位", "可任教内容", "薪资期望", "跟进记录", "联系方式"]
    for f in text_fields:
        if f in record and record[f] is not None:
            fields[f] = str(record[f])
    
    # 单选字段
    if "性别" in record and record["性别"] in ["男", "女"]:
        fields["性别"] = record["性别"]
    
    if "肤色" in record and record["肤色"] in skin_map:
        fields["肤色"] = skin_map[record["肤色"]]
    
    if "学历" in record and record["学历"] in edu_map:
        fields["学历"] = edu_map[record["学历"]]
    
    if "是否可转聘" in record and record["是否可转聘"] in transfer_map:
        fields["是否可转聘"] = transfer_map[record["是否可转聘"]]
    
    # 数字字段
    if "年龄" in record and record["年龄"] is not None:
        try:
            fields["年龄"] = float(record["年龄"])
        except:
            pass
    
    # 日期字段
    if "更新日期" in record and record["更新日期"] is not None:
        try:
            fields["更新日期"] = int(record["更新日期"])
        except:
            pass
    
    return fields

# 保存为批量导入格式
output = {
    "app_token": app_token,
    "table_id": table_id,
    "records": []
}

for record in records:
    fields = build_fields(record)
    output["records"].append({
        "候选人ID": record.get("候选人ID"),
        "fields": fields
    })

with open('/root/.openclaw/workspace/prepared_records.json', 'w', encoding='utf-8') as f:
    json.dump(output, f, ensure_ascii=False, indent=2)

print(f"准备了 {len(output['records'])} 条记录")
print("数据已保存到 prepared_records.json")
