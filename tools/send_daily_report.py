#!/usr/bin/env python3
"""
自动发送学习日报到邮箱
"""
import sys
import os
sys.path.insert(0, '/root/.openclaw/workspace/tools')
from send_email import send_email
from datetime import datetime, timedelta

def read_daily_study_log(date_str):
    """读取指定日期的学习日志"""
    filepath = f"/root/.openclaw/workspace/memory/self-log/{date_str}-daily-study.md"
    if os.path.exists(filepath):
        with open(filepath, 'r', encoding='utf-8') as f:
            return f.read()
    return None

def read_study_log(date_str):
    """读取指定日期的其他学习笔记"""
    # 尝试不同格式的学习笔记
    possible_files = [
        f"/root/.openclaw/workspace/memory/self-log/{date_str}-study-self-media.md",
        f"/root/.openclaw/workspace/memory/self-log/{date_str}-study-korea-ecommerce.md",
        f"/root/.openclaw/workspace/memory/self-log/{date_str}-self-media-study.md",
        f"/root/.openclaw/workspace/memory/self-log/{date_str}-korea-ecommerce-study.md",
    ]
    
    for filepath in possible_files:
        if os.path.exists(filepath):
            with open(filepath, 'r', encoding='utf-8') as f:
                return f.read()
    return None

def get_last_14_days_summary():
    """获取过去14天的学习汇总"""
    today = datetime.now()
    summary_parts = []
    
    for i in range(14):
        date = today - timedelta(days=i)
        date_str = date.strftime("%Y-%m-%d")
        
        # 读取韩国电商实操日报
        daily_study = read_daily_study_log(date_str)
        if daily_study:
            # 提取标题和案例数量
            lines = daily_study.split('\n')
            title = lines[0] if lines else f"📚 韩国电商实操日报 - {date_str}"
            case_count = daily_study.count('【问题案例')
            summary_parts.append(f"\n{'='*60}\n{title}\n案例数量: {case_count}个\n{'='*60}\n")
            # 添加每个案例的标题
            for line in lines:
                if '【问题案例' in line:
                    summary_parts.append(line.strip())
                    summary_parts.append("")
        
        # 读取其他学习笔记
        other_study = read_study_log(date_str)
        if other_study:
            lines = other_study.split('\n')
            if lines:
                summary_parts.append(f"\n---\n{lines[0]}\n---\n")
    
    return '\n'.join(summary_parts) if summary_parts else "暂无学习记录"

def send_daily_report_email():
    """发送今日学习日报"""
    today_str = datetime.now().strftime("%Y-%m-%d")
    
    # 读取今日报告
    daily_content = read_daily_study_log(today_str)
    other_content = read_study_log(today_str)
    
    if not daily_content and not other_content:
        print(f"⚠️ 未找到 {today_str} 的学习记录")
        return False
    
    # 构建邮件内容
    body_parts = [f"📅 日期: {today_str}\n"]
    
    if daily_content:
        body_parts.append("\n" + "="*60)
        body_parts.append("📚 韩国电商实操日报")
        body_parts.append("="*60)
        body_parts.append(daily_content)
    
    if other_content:
        body_parts.append("\n" + "="*60)
        body_parts.append("📝 其他学习笔记")
        body_parts.append("="*60)
        body_parts.append(other_content)
    
    body = '\n'.join(body_parts)
    
    subject = f"📚 每日学习报告 - {today_str}"
    return send_email(subject, body)

def send_weekly_summary_email():
    """发送过去两周的学习汇总"""
    summary = get_last_14_days_summary()
    
    today = datetime.now()
    week_start = (today - timedelta(days=13)).strftime("%Y-%m-%d")
    week_end = today.strftime("%Y-%m-%d")
    
    subject = f"📊 过去两周学习汇总 ({week_start} ~ {week_end})"
    
    body = f"""
你好！

这是过去两周（{week_start} ~ {week_end}）的学习汇总报告：

{summary}

---
发送时间: {datetime.now().strftime("%Y-%m-%d %H:%M:%S")}
由 Kimi Claw 自动生成
"""
    
    return send_email(subject, body)

if __name__ == "__main__":
    if len(sys.argv) > 1:
        if sys.argv[1] == "daily":
            send_daily_report_email()
        elif sys.argv[1] == "weekly":
            send_weekly_summary_email()
        elif sys.argv[1] == "test":
            # 发送测试邮件
            send_email("🧪 邮件定时任务测试", "这是一封定时任务测试邮件。\n\n如果您收到这封邮件，说明定时任务配置成功！")
        else:
            print("用法: python3 send_daily_report.py [daily|weekly|test]")
    else:
        print("用法: python3 send_daily_report.py [daily|weekly|test]")
