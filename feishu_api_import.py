#!/usr/bin/env python3
"""
飞书表格数据清理和重新导入脚本 - 使用飞书API直接调用
"""

import json
import time
import requests
import os

# 飞书API配置
APP_TOKEN = "O7WjbMQEaaWGTlsnvNMcoWkXnde"
TABLE_ID = "tblIqk2EUj832N2p"
DATA_FILE = "/root/.openclaw/workspace/records_to_import_final.json"

# 飞书API基础URL
BASE_URL = "https://open.feishu.cn/open-apis/bitable/v1/apps"

# 从环境变量获取token，如果没有则使用默认值
# 注意：实际使用时需要从飞书开发者平台获取有效的tenant_access_token或user_access_token
TENANT_ACCESS_TOKEN = os.environ.get("FEISHU_TENANT_ACCESS_TOKEN", "")

def get_headers():
    """获取API请求头"""
    return {
        "Authorization": f"Bearer {TENANT_ACCESS_TOKEN}",
        "Content-Type": "application/json"
    }

def get_tenant_access_token():
    """获取tenant_access_token"""
    # 这里需要从飞书开发者平台获取app_id和app_secret
    # 由于这是一个内部脚本，我们假设token已经通过环境变量设置
    return TENANT_ACCESS_TOKEN

def get_all_record_ids():
    """获取表格中所有记录的record_id"""
    print("正在获取表格中所有记录的record_id...")
    
    record_ids = []
    page_token = None
    
    while True:
        url = f"{BASE_URL}/{APP_TOKEN}/tables/{TABLE_ID}/records"
        params = {"page_size": 500}
        if page_token:
            params["page_token"] = page_token
        
        try:
            response = requests.get(url, headers=get_headers(), params=params)
            data = response.json()
            
            if data.get("code") != 0:
                print(f"API错误: {data.get('msg')}")
                break
            
            items = data.get("data", {}).get("items", [])
            for item in items:
                record_ids.append(item["record_id"])
            
            has_more = data.get("data", {}).get("has_more", False)
            if not has_more:
                break
            page_token = data.get("data", {}).get("page_token")
            
        except Exception as e:
            print(f"请求失败: {e}")
            break
    
    print(f"共获取到 {len(record_ids)} 条记录的record_id")
    return record_ids

def delete_record(record_id):
    """删除单条记录"""
    url = f"{BASE_URL}/{APP_TOKEN}/tables/{TABLE_ID}/records/{record_id}"
    try:
        response = requests.delete(url, headers=get_headers())
        data = response.json()
        return data.get("code") == 0
    except Exception as e:
        print(f"删除记录 {record_id} 失败: {e}")
        return False

def delete_records(record_ids):
    """批量删除记录"""
    print(f"\n开始删除 {len(record_ids)} 条记录...")
    deleted_count = 0
    failed_count = 0
    
    for i, record_id in enumerate(record_ids):
        if delete_record(record_id):
            deleted_count += 1
        else:
            failed_count += 1
        
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
    url = f"{BASE_URL}/{APP_TOKEN}/tables/{TABLE_ID}/records"
    
    # 处理字段类型
    processed_fields = {}
    for key, value in fields.items():
        if value is None or value == '':
            continue
        
        # 处理数字类型字段
        if key in ['年龄'] and isinstance(value, (int, float)):
            processed_fields[key] = value
        # 处理日期类型字段 (更新日期是时间戳)
        elif key == '更新日期' and isinstance(value, (int, float)):
            processed_fields[key] = int(value)
        # 其他字段作为文本处理
        else:
            processed_fields[key] = str(value) if value is not None else ""
    
    payload = {"fields": processed_fields}
    
    try:
        response = requests.post(url, headers=get_headers(), json=payload)
        data = response.json()
        return data.get("code") == 0, data
    except Exception as e:
        return False, str(e)

def import_records(records):
    """导入记录到表格"""
    print(f"\n开始导入 {len(records)} 条记录...")
    success_count = 0
    failed_count = 0
    failed_records = []
    
    for i, record in enumerate(records):
        success, result = create_record(record)
        
        if success:
            success_count += 1
        else:
            failed_count += 1
            failed_records.append({
                "index": i,
                "候选人ID": record.get("候选人ID", "N/A"),
                "error": result
            })
            if failed_count <= 5:  # 只显示前5个错误
                print(f"导入记录 {i+1} (候选人ID: {record.get('候选人ID', 'N/A')}) 失败: {result}")
        
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
    
    # 检查token
    if not TENANT_ACCESS_TOKEN:
        print("\n错误: 未设置 FEISHU_TENANT_ACCESS_TOKEN 环境变量")
        print("请先设置飞书tenant_access_token:")
        print("export FEISHU_TENANT_ACCESS_TOKEN='your_token_here'")
        return
    
    # 步骤1: 获取所有记录的record_id
    record_ids = get_all_record_ids()
    
    if not record_ids:
        print("表格中没有记录或获取失败，直接导入新数据")
        deleted_count = 0
    else:
        # 步骤2: 删除所有现有记录
        deleted_count = delete_records(record_ids)
        print(f"\n已删除 {deleted_count} 条旧记录")
    
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
    print(f"  - 删除旧记录: {deleted_count} 条")
    print(f"  - 成功导入新记录: {imported} 条")
    print(f"  - 最终表格记录总数: {imported} 条")
    print("=" * 60)

if __name__ == "__main__":
    main()
