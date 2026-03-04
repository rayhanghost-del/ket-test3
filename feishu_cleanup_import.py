#!/usr/bin/env python3
"""
飞书表格数据清理和重新导入脚本
"""

import json
import time
import subprocess
import sys

# 飞书表格配置
APP_TOKEN = "O7WjbMQEaaWGTlsnvNMcoWkXnde"
TABLE_ID = "tblIqk2EUj832N2p"
DATA_FILE = "/root/.openclaw/workspace/records_to_import_final.json"

def run_command(cmd):
    """执行shell命令并返回结果"""
    result = subprocess.run(cmd, shell=True, capture_output=True, text=True)
    return result.returncode, result.stdout, result.stderr

def get_all_record_ids():
    """获取表格中所有记录的record_id"""
    print("正在获取表格中所有记录的record_id...")
    
    # 使用feishu_bitable_list_records工具
    cmd = f'openclaw feishu_bitable_list_records --app_token {APP_TOKEN} --table_id {TABLE_ID} --page_size 500'
    
    record_ids = []
    page_token = None
    
    while True:
        full_cmd = cmd
        if page_token:
            full_cmd += f' --page_token {page_token}'
        
        returncode, stdout, stderr = run_command(full_cmd)
        
        if returncode != 0:
            print(f"获取记录失败: {stderr}")
            break
        
        try:
            data = json.loads(stdout)
            for record in data.get('records', []):
                record_ids.append(record['record_id'])
            
            if not data.get('has_more', False):
                break
            page_token = data.get('page_token')
        except Exception as e:
            print(f"解析响应失败: {e}")
            break
    
    print(f"共获取到 {len(record_ids)} 条记录的record_id")
    return record_ids

def delete_records(record_ids):
    """删除指定记录"""
    print(f"\n开始删除 {len(record_ids)} 条记录...")
    deleted_count = 0
    failed_count = 0
    
    for i, record_id in enumerate(record_ids):
        cmd = f'openclaw feishu_bitable_delete_record --app_token {APP_TOKEN} --table_id {TABLE_ID} --record_id {record_id}'
        returncode, stdout, stderr = run_command(cmd)
        
        if returncode == 0:
            deleted_count += 1
        else:
            failed_count += 1
            print(f"删除记录 {record_id} 失败: {stderr}")
        
        # 每删除50条报告一次进度
        if (i + 1) % 50 == 0:
            print(f"  已删除 {i + 1}/{len(record_ids)} 条记录...")
        
        # 每条记录间隔0.3秒
        time.sleep(0.3)
    
    print(f"删除完成: 成功 {deleted_count} 条, 失败 {failed_count} 条")
    return deleted_count

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

def create_record(fields):
    """创建单条记录"""
    # 构建fields JSON
    fields_json = json.dumps(fields, ensure_ascii=False)
    
    cmd = f'openclaw feishu_bitable_create_record --app_token {APP_TOKEN} --table_id {TABLE_ID} --fields \'{fields_json}\''
    returncode, stdout, stderr = run_command(cmd)
    
    return returncode == 0, stdout, stderr

def import_records(records):
    """导入记录到表格"""
    print(f"\n开始导入 {len(records)} 条记录...")
    success_count = 0
    failed_count = 0
    
    for i, record in enumerate(records):
        # 移除空值字段
        fields = {k: v for k, v in record.items() if v is not None and v != ''}
        
        success, stdout, stderr = create_record(fields)
        
        if success:
            success_count += 1
        else:
            failed_count += 1
            print(f"导入记录 {i+1} (候选人ID: {record.get('候选人ID', 'N/A')}) 失败: {stderr}")
        
        # 每50条报告一次进度
        if (i + 1) % 50 == 0:
            print(f"  已导入 {i + 1}/{len(records)} 条记录...")
        
        # 每条记录间隔0.3秒
        time.sleep(0.3)
    
    print(f"导入完成: 成功 {success_count} 条, 失败 {failed_count} 条")
    return success_count

def main():
    print("=" * 60)
    print("飞书表格数据清理和重新导入")
    print("=" * 60)
    
    # 步骤1: 获取所有记录的record_id
    record_ids = get_all_record_ids()
    
    if not record_ids:
        print("表格中没有记录或获取失败，直接导入新数据")
    else:
        # 步骤2: 删除所有现有记录
        deleted = delete_records(record_ids)
        print(f"\n已删除 {deleted} 条旧记录")
    
    # 步骤3: 加载本地数据
    records = load_import_data()
    
    if not records:
        print("没有数据需要导入")
        return
    
    # 步骤4: 导入新记录
    imported = import_records(records)
    
    # 最终报告
    print("\n" + "=" * 60)
    print("任务完成报告:")
    print(f"  - 删除旧记录: {len(record_ids)} 条")
    print(f"  - 成功导入新记录: {imported} 条")
    print(f"  - 最终表格记录总数: {imported} 条")
    print("=" * 60)

if __name__ == "__main__":
    main()
