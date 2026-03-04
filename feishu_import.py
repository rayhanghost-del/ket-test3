#!/usr/bin/env python3
"""
飞书表格数据清理和重新导入脚本
使用 OpenClaw 内置的 feishu_bitable 工具
"""

import json
import time
import subprocess
import sys

# 飞书表格配置
APP_TOKEN = "O7WjbMQEaaWGTlsnvNMcoWkXnde"
TABLE_ID = "tblIqk2EUj832N2p"
DATA_FILE = "/root/.openclaw/workspace/records_to_import_final.json"

def run_openclaw_tool(tool_name, **kwargs):
    """调用 OpenClaw 工具"""
    # 构建命令参数
    args = []
    for key, value in kwargs.items():
        if isinstance(value, bool):
            if value:
                args.append(f"--{key}")
        elif isinstance(value, (dict, list)):
            args.append(f"--{key} '{json.dumps(value, ensure_ascii=False)}'")
        else:
            args.append(f"--{key} {value}")
    
    # 使用 openclaw agent 命令调用工具
    cmd = f"openclaw agent --tool {tool_name} {' '.join(args)} --json"
    
    result = subprocess.run(cmd, shell=True, capture_output=True, text=True)
    
    if result.returncode != 0:
        return None, result.stderr
    
    try:
        return json.loads(result.stdout), None
    except:
        return result.stdout, None

def get_all_records():
    """获取表格中所有记录"""
    print("正在获取表格中所有记录...")
    
    # 使用 feishu_bitable_list_records
    result, error = run_openclaw_tool(
        "feishu_bitable_list_records",
        app_token=APP_TOKEN,
        table_id=TABLE_ID,
        page_size=500
    )
    
    if error:
        print(f"获取记录失败: {error}")
        return []
    
    records = result.get("records", []) if isinstance(result, dict) else []
    print(f"共获取到 {len(records)} 条记录")
    return records

def delete_record(record_id):
    """删除单条记录"""
    # 使用 feishu_bitable_update_record 将记录清空（因为没有删除API）
    # 或者我们可以使用其他方式
    # 实际上，我们需要使用 feishu API 直接删除
    import requests
    
    # 这里需要 tenant_access_token
    # 由于无法获取，我们将记录需要删除的ID
    return True

def load_import_data():
    """加载要导入的数据"""
    print(f"\n正在加载数据文件 {DATA_FILE}...")
    try:
        with open(DATA_FILE, 'r', encoding='utf-8') as f:
            data = json.load(f)
        print(f"成功加载 {len(data)} 条记录")
        return data
    except Exception as e:
        print(f"加载数据文件失败: {e}")
        return []

def import_record(record):
    """导入单条记录"""
    # 处理字段
    fields = {}
    for key, value in record.items():
        if value is None or value == '':
            continue
        
        # 处理数字类型字段
        if key in ['年龄'] and isinstance(value, (int, float)):
            fields[key] = value
        # 处理日期类型字段
        elif key == '更新日期' and isinstance(value, (int, float)):
            fields[key] = int(value)
        # 其他字段作为文本
        else:
            fields[key] = str(value) if value is not None else ""
    
    result, error = run_openclaw_tool(
        "feishu_bitable_create_record",
        app_token=APP_TOKEN,
        table_id=TABLE_ID,
        fields=fields
    )
    
    return result is not None, error

def main():
    print("=" * 60)
    print("飞书表格数据清理和重新导入")
    print("=" * 60)
    
    # 步骤1: 获取所有记录
    existing_records = get_all_records()
    
    if existing_records:
        print(f"\n发现 {len(existing_records)} 条现有记录")
        print("注意: 由于API限制，请手动删除旧记录或联系管理员获取删除权限")
        print("或者，可以直接导入新记录，然后手动清理重复数据")
    
    # 步骤2: 加载本地数据
    records = load_import_data()
    
    if not records:
        print("没有数据需要导入")
        return
    
    # 步骤3: 导入新记录
    print(f"\n开始导入 {len(records)} 条记录...")
    success_count = 0
    failed_count = 0
    
    for i, record in enumerate(records):
        success, error = import_record(record)
        
        if success:
            success_count += 1
        else:
            failed_count += 1
            if failed_count <= 5:
                print(f"导入记录 {i+1} (候选人ID: {record.get('候选人ID', 'N/A')}) 失败: {error}")
        
        # 每50条报告一次进度
        if (i + 1) % 50 == 0:
            print(f"  已导入 {i + 1}/{len(records)} 条记录...")
        
        # 每条记录间隔0.3秒
        time.sleep(0.3)
    
    print(f"\n导入完成: 成功 {success_count} 条, 失败 {failed_count} 条")
    
    # 最终报告
    print("\n" + "=" * 60)
    print("任务完成报告:")
    print(f"  - 原有记录数: {len(existing_records)} 条")
    print(f"  - 成功导入新记录: {success_count} 条")
    print(f"  - 导入失败: {failed_count} 条")
    if existing_records:
        print(f"  - 提示: 表格中现在有 {len(existing_records) + success_count} 条记录（含旧数据）")
        print(f"  - 建议: 请手动删除旧记录或联系管理员清理")
    print("=" * 60)

if __name__ == "__main__":
    main()
