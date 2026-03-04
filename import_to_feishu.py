import json
import time
import subprocess
import sys

# 读取数据文件
with open('/root/.openclaw/workspace/records_to_import_filtered.json', 'r', encoding='utf-8') as f:
    records = json.load(f)

app_token = "O7WjbMQEaaWGTlsnvNMcoWkXnde"
table_id = "tblIqk2EUj832N2p"

# 字段映射 - 飞书字段名到数据字段名
field_mapping = {
    "候选人ID": "候选人ID",
    "姓名": "姓名",
    "中介": "中介",
    "国籍": "国籍",
    "性别": "性别",
    "年龄": "年龄",
    "肤色": "肤色",
    "学历": "学历",
    "专业": "专业",
    "资格证": "资格证",
    "教学经验": "教学经验",
    "目前所在地": "目前所在地",
    "上岗时间": "上岗时间",
    "签证类型": "签证类型",
    "工签职位": "工签职位",
    "是否可转聘": "是否可转聘",
    "意向城市": "意向城市",
    "意向职位": "意向职位",
    "可任教内容": "可任教内容",
    "薪资期望": "薪资期望",
    "更新日期": "更新日期",
    "跟进记录": "跟进记录",
    "联系方式": "联系方式"
}

# 单选字段选项映射
single_select_fields = {
    "性别": {"男": "男", "女": "女"},
    "肤色": {"白": "白", "黑": "黑", "棕": "棕", "浅黑": "浅黑", "黄": "亚裔"},
    "学历": {"本科": "本科", "硕士": "硕士", "博士": "博士", "MBA": "MBA"},
    "是否可转聘": {"可": "可转聘", "可转": "可转聘", "新办": "不可转聘"}
}

def convert_record(record):
    """转换记录为飞书表格格式"""
    fields = {}
    
    for fs_field, data_field in field_mapping.items():
        if data_field in record and record[data_field] is not None:
            value = record[data_field]
            
            # 处理单选字段
            if fs_field in single_select_fields:
                value_str = str(value).strip()
                if value_str in single_select_fields[fs_field]:
                    fields[fs_field] = single_select_fields[fs_field][value_str]
                else:
                    # 如果值不在选项中，跳过该字段
                    continue
            # 处理数字字段
            elif fs_field == "年龄":
                try:
                    fields[fs_field] = float(value)
                except:
                    continue
            # 处理日期字段 (毫秒时间戳)
            elif fs_field == "更新日期":
                try:
                    fields[fs_field] = int(value)
                except:
                    continue
            # 文本字段
            else:
                fields[fs_field] = str(value)
    
    return fields

def import_record(fields, record_id):
    """导入单条记录"""
    # 构建feishu_bitable_create_record命令
    fields_json = json.dumps(fields, ensure_ascii=False)
    
    cmd = [
        "openclaw", "feishu_bitable_create_record",
        "--app_token", app_token,
        "--table_id", table_id,
        "--fields", fields_json
    ]
    
    try:
        result = subprocess.run(cmd, capture_output=True, text=True, timeout=30)
        if result.returncode == 0:
            return True, None
        else:
            return False, result.stderr
    except Exception as e:
        return False, str(e)

# 统计
success_count = 0
failed_records = []
total = len(records)

print(f"开始导入 {total} 条记录...")
print("=" * 60)

for i, record in enumerate(records):
    record_id = record.get('候选人ID', f'Unknown_{i}')
    
    # 转换记录
    fields = convert_record(record)
    
    # 导入记录
    success, error = import_record(fields, record_id)
    
    if success:
        success_count += 1
    else:
        failed_records.append({
            "id": record_id,
            "error": error,
            "fields": fields
        })
    
    # 每50条报告进度
    if (i + 1) % 50 == 0:
        print(f"进度: {i + 1}/{total} | 成功: {success_count} | 失败: {len(failed_records)}")
    
    # 间隔0.3秒
    time.sleep(0.3)

# 最终报告
print("=" * 60)
print(f"导入完成!")
print(f"总计: {total}")
print(f"成功: {success_count}")
print(f"失败: {len(failed_records)}")

if failed_records:
    print("\n失败的记录:")
    for r in failed_records:
        print(f"  - {r['id']}: {r['error']}")
    
    # 保存失败记录
    with open('/root/.openclaw/workspace/failed_records.json', 'w', encoding='utf-8') as f:
        json.dump(failed_records, f, ensure_ascii=False, indent=2)
    print("\n失败记录已保存到 failed_records.json")

# 保存导入报告
report = {
    "total": total,
    "success": success_count,
    "failed": len(failed_records),
    "failed_records": failed_records
}
with open('/root/.openclaw/workspace/import_report.json', 'w', encoding='utf-8') as f:
    json.dump(report, f, ensure_ascii=False, indent=2)
print("导入报告已保存到 import_report.json")
