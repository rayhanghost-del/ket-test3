#!/usr/bin/env python3
"""
创建飞书日历日程
"""
import requests
import json
from datetime import datetime, timedelta
import os

# 飞书API配置
FEISHU_BASE_URL = "https://open.feishu.cn/open-apis"

def get_access_token():
    """获取飞书访问令牌"""
    # 从环境变量获取
    return os.environ.get('FEISHU_BOT_ACCESS_TOKEN', '')

def create_calendar_event(user_id, summary, start_time, end_time, description="", reminder_minutes=0):
    """
    创建日历日程
    
    Args:
        user_id: 用户Open ID (如 ou_3b365c8ad071f9ed0d8d7ff731cccf67)
        summary: 日程标题
        start_time: 开始时间 (datetime对象)
        end_time: 结束时间 (datetime对象)
        description: 日程描述
        reminder_minutes: 提前提醒分钟数
    """
    try:
        # 构建请求数据
        event_data = {
            "summary": summary,
            "description": description,
            "start": {
                "timestamp": str(int(start_time.timestamp())),
                "timezone": "Asia/Shanghai"
            },
            "end": {
                "timestamp": str(int(end_time.timestamp())),
                "timezone": "Asia/Shanghai"
            },
            "attendees": [
                {
                    "type": "user",
                    "user_id": user_id
                }
            ],
            "need_notification": True
        }
        
        # 如果有提醒设置
        if reminder_minutes > 0:
            event_data["reminders"] = [
                {
                    "minutes": reminder_minutes
                }
            ]
        
        print(f"📅 准备创建日程: {summary}")
        print(f"   时间: {start_time.strftime('%Y-%m-%d %H:%M')} - {end_time.strftime('%H:%M')}")
        print(f"   提醒: {reminder_minutes}分钟前")
        
        # 注意：实际API调用需要通过飞书Bot的access_token
        # 这里先打印数据结构，实际创建需要feishu扩展支持
        print(f"\n日程数据: {json.dumps(event_data, ensure_ascii=False, indent=2)}")
        
        return event_data
        
    except Exception as e:
        print(f"❌ 创建日程失败: {e}")
        return None

def create_test_event():
    """创建测试日程 - 2分钟后提醒读电商报告"""
    now = datetime.now()
    start_time = now + timedelta(minutes=2)  # 2分钟后开始
    end_time = start_time + timedelta(minutes=30)  # 持续30分钟
    
    user_id = "ou_3b365c8ad071f9ed0d8d7ff731cccf67"  # 你的飞书User ID
    
    result = create_calendar_event(
        user_id=user_id,
        summary="📚 阅读电商学习报告",
        start_time=start_time,
        end_time=end_time,
        description="今天的韩国电商实操日报已生成，请查看邮件或飞书消息。",
        reminder_minutes=0  # 准时提醒
    )
    
    return result

if __name__ == "__main__":
    create_test_event()
