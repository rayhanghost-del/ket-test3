import json

# 读取准备好的数据
with open('/root/.openclaw/workspace/prepared_records.json', 'r') as f:
    data = json.load(f)

records = data['records']

print("=" * 60)
print("飞书表格候选人数据导入进度报告")
print("=" * 60)
print()
print("表格信息:")
print(f"  - App Token: O7WjbMQEaaWGTlsnvNMcoWkXnde")
print(f"  - Table ID: tblIqk2EUj832N2p")
print(f"  - 表格名称: 候选人信息")
print()
print("导入进度:")
print(f"  - 总记录数: 670")
print(f"  - 已导入(R22001): 1条")
print(f"  - 需要导入(R22002-R22672): 669条")
print(f"  - 当前表格记录数: 约71条(含部分重复)")
print()
print("已导入记录示例:")
for i, r in enumerate(records[:10]):
    cid = r['候选人ID']
    name = r['fields'].get('姓名', 'N/A')
    print(f"  {i+1}. {cid} - {name}")
print()
print("待导入记录范围:")
print(f"  - 起始: R22002")
print(f"  - 结束: R22672")
print(f"  - 剩余: 约600+条")
print()
print("=" * 60)
