import json
import subprocess
import time
import sys

# 读取准备好的数据
with open('/root/.openclaw/workspace/prepared_records.json', 'r') as f:
    data = json.load(f)

records = data['records']
app_token = data['app_token']
table_id = data['table_id']

success_count = 0
failed_records = []

print(f"开始导入 {len(records)} 条记录...", file=sys.stderr)
print("=" * 60, file=sys.stderr)

# 导入所有记录
for i, r in enumerate(records):
    fields = r['fields']
    cid = r['候选人ID']
    
    # 构建命令参数
    fields_json = json.dumps(fields, ensure_ascii=False)
    
    # 调用工具
    cmd = [
        "openclaw", "feishu_bitable_create_record",
        "--app_token", app_token,
        "--table_id", table_id,
        "--fields", fields_json
    ]
    
    try:
        result = subprocess.run(cmd, capture_output=True, text=True, timeout=30)
        if result.returncode == 0:
            success_count += 1
        else:
            failed_records.append({"id": cid, "error": result.stderr})
            print(f"  失败: {cid}", file=sys.stderr)
    except Exception as e:
        failed_records.append({"id": cid, "error": str(e)})
        print(f"  失败: {cid} - {e}", file=sys.stderr)
    
    # 每50条报告进度
    if (i + 1) % 50 == 0:
        print(f"进度: {i + 1}/{len(records)} | 成功: {success_count} | 失败: {len(failed_records)}", file=sys.stderr)
    
    # 间隔0.3秒
    time.sleep(0.3)

# 最终报告
print("=" * 60, file=sys.stderr)
print(f"导入完成! 总计: {len(records)}, 成功: {success_count}, 失败: {len(failed_records)}", file=sys.stderr)

# 保存失败记录
if failed_records:
    with open('/root/.openclaw/workspace/failed_records.json', 'w') as f:
        json.dump(failed_records, f, ensure_ascii=False, indent=2)
    print(f"失败记录已保存到 failed_records.json", file=sys.stderr)

# 输出结果
result = {
    "total": len(records),
    "success": success_count,
    "failed": len(failed_records),
    "failed_records": failed_records
}
print(json.dumps(result, ensure_ascii=False))
