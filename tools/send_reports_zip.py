#!/usr/bin/env python3
"""
发送报告邮件 - ZIP压缩版
"""
import sys
sys.path.insert(0, '/root/.openclaw/workspace/tools')
from send_email import send_email
from datetime import datetime

def send_ecommerce_report():
    """发送电商实操日报汇总 (ZIP格式)"""
    subject = f"📚 韩国电商实操日报汇总 - {datetime.now().strftime('%Y-%m-%d')}"
    body = """
你好！

这是所有韩国电商实操日报的汇总报告。

📊 报告内容：
- 问题案例汇总（退货处理、广告优化、入库管理等）
- 运营技巧汇总
- 所有原文链接

📎 附件：韩国电商实操日报汇总.zip
    └─ 韩国电商实操日报汇总.pdf (解压后查看)

解压ZIP文件后即可看到PDF报告。

---
发送时间: {}
由 Kimi Claw 自动生成
""".format(datetime.now().strftime("%Y-%m-%d %H:%M:%S"))
    
    attachment = "/root/.openclaw/workspace/reports/韩国电商实操日报汇总.zip"
    return send_email(subject, body, attachment)

def send_selfmedia_report():
    """发送自媒体学习笔记汇总 (ZIP格式)"""
    subject = f"📝 自媒体学习笔记汇总 - {datetime.now().strftime('%Y-%m-%d')}"
    body = """
你好！

这是所有自媒体学习笔记的汇总报告。

📊 报告内容：
- 自媒体运营知识
- 平台算法更新
- 变现模式分析
- 内容创作技巧

📎 附件：自媒体学习笔记汇总.zip
    └─ 自媒体学习笔记汇总.pdf (解压后查看)

解压ZIP文件后即可看到PDF报告。

---
发送时间: {}
由 Kimi Claw 自动生成
""".format(datetime.now().strftime("%Y-%m-%d %H:%M:%S"))
    
    attachment = "/root/.openclaw/workspace/reports/自媒体学习笔记汇总.zip"
    return send_email(subject, body, attachment)

if __name__ == "__main__":
    print("📧 正在发送电商报告 (ZIP格式)...")
    send_ecommerce_report()
    print("📧 正在发送自媒体报告 (ZIP格式)...")
    send_selfmedia_report()
    print("✅ 所有报告已发送完成！")
