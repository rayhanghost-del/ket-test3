#!/usr/bin/env python3
"""
邮件发送工具 - 用于发送日报/周报等报告
修复版：正确处理PDF附件
"""
import smtplib
import os
import sys
from email.mime.text import MIMEText
from email.mime.multipart import MIMEMultipart
from email.mime.base import MIMEBase
from email.mime.application import MIMEApplication
from email import encoders
from datetime import datetime

# 配置
SMTP_SERVER = "smtp.qq.com"
SMTP_PORT = 587
SENDER_EMAIL = "3859534243@qq.com"
SENDER_PASSWORD = "toszgyshvkrtcbff"  # SMTP授权码
RECIPIENT_EMAIL = "3859534243@qq.com"

def send_email(subject, body, attachment_path=None):
    """发送邮件"""
    try:
        # 创建邮件
        msg = MIMEMultipart()
        msg['From'] = SENDER_EMAIL
        msg['To'] = RECIPIENT_EMAIL
        msg['Subject'] = subject
        
        # 添加正文
        msg.attach(MIMEText(body, 'plain', 'utf-8'))
        
        # 添加附件
        if attachment_path and os.path.exists(attachment_path):
            filename = os.path.basename(attachment_path)
            
            # 根据文件类型选择正确的MIME类型
            if filename.endswith('.pdf'):
                # PDF文件使用 MIMEApplication
                with open(attachment_path, 'rb') as f:
                    attachment = MIMEApplication(f.read(), _subtype="pdf")
                attachment.add_header(
                    'Content-Disposition',
                    f'attachment; filename="{filename}"'
                )
                msg.attach(attachment)
            else:
                # 其他文件使用 MIMEBase
                with open(attachment_path, 'rb') as f:
                    attachment = MIMEBase('application', 'octet-stream')
                    attachment.set_payload(f.read())
                encoders.encode_base64(attachment)
                attachment.add_header(
                    'Content-Disposition',
                    f'attachment; filename="{filename}"'
                )
                msg.attach(attachment)
        
        # 连接SMTP服务器
        server = smtplib.SMTP(SMTP_SERVER, SMTP_PORT)
        server.starttls()
        server.login(SENDER_EMAIL, SENDER_PASSWORD)
        
        # 发送邮件
        server.send_message(msg)
        server.quit()
        
        print(f"✅ 邮件发送成功: {subject}")
        return True
        
    except Exception as e:
        print(f"❌ 邮件发送失败: {e}")
        return False

def send_daily_report(report_content, report_date=None):
    """发送每日学习报告"""
    if report_date is None:
        report_date = datetime.now().strftime("%Y-%m-%d")
    
    subject = f"📚 每日学习报告 - {report_date}"
    body = f"""
你好！

这是 {report_date} 的学习报告：

{report_content}

---
发送时间: {datetime.now().strftime("%Y-%m-%d %H:%M:%S")}
由 Kimi Claw 自动生成
"""
    return send_email(subject, body)

def send_weekly_summary(week_start, week_end, summary_content):
    """发送周汇总报告"""
    subject = f"📊 本周学习汇总 ({week_start} ~ {week_end})"
    body = f"""
你好！

这是 {week_start} 至 {week_end} 的学习汇总：

{summary_content}

---
发送时间: {datetime.now().strftime("%Y-%m-%d %H:%M:%S")}
由 Kimi Claw 自动生成
"""
    return send_email(subject, body)

if __name__ == "__main__":
    # 测试邮件
    if len(sys.argv) > 1 and sys.argv[1] == "test":
        test_body = "这是一封测试邮件。\n\n如果收到这封邮件，说明 SMTP 配置成功！"
        send_email("🧪 邮件配置测试", test_body)
    else:
        print("用法: python3 send_email.py test")
