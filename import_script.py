import json
import time
import subprocess

# 读取记录
with open('records_to_import.json', 'r', encoding='utf-8') as f:
    records = json.load(f)

app_token = 'O7WjbMQEaaWGTlsnvNMcoWkXnde'
table_id = 'tblIqk2EUj832N2p'

success_count = 0
fail_count = 0

for i, record in enumerate(records):
    # 构建fields - 只包含非空值
    fields = {k: v for k, v in record.items() if v is not None and v != ''}
    
    # 转换为JSON字符串
    fields_json = json.dumps(fields, ensure_ascii=False)
    
    # 构建命令
    cmd = [
        'openclaw', 'feishu_bitable_create_record',
        '--app_token', app_token,
        '--table_id', table_id,
        '--fields', fields_json
    ]
    
    # 执行命令
    result = subprocess.run(cmd, capture_output=True, text=True)
    
    candidate_id = record.get("候选人ID", "")
    name = record.get("姓名", "")
    
    if result.returncode == 0:
        success_count += 1
        print(f'[{i+1}/{len(records)}] 成功: {candidate_id} - {name}')
    else:
        fail_count += 1
        print(f'[{i+1}/{len(records)}] 失败: {candidate_id} - {name}')
        if result.stderr:
            print(f'  错误: {result.stderr[:200]}')
    
    # 间隔0.3秒
    time.sleep(0.3)

print(f'\n导入完成: 成功 {success_count}, 失败 {fail_count}')
