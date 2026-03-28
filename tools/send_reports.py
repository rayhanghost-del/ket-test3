#!/usr/bin/env python3
"""
发送报告邮件 - 修复版
"""
import sys
sys.path.insert(0, '/root/.openclaw/workspace/tools')
from send_email import send_email
from datetime import datetime

def send_ecommerce_report():
    """发送电商实操日报汇总"""
    subject = f"📚 韩国电商实操日报汇总 - {datetime.now().strftime('%Y-%m-%d')}"
    body = """
你好！

这是所有韩国电商实操日报的汇总报告，包含过去收集的所有问题案例和运营技巧。

📊 报告内容：
- 问题案例汇总（按日期分类）
- 运营技巧汇总
- 所有原文链接（可直接点击访问）

📎 附件：韩国电商实操日报汇总.pdf

建议保存此PDF，方便随时查阅。

---
发送时间: {}
由 Kimi Claw 自动生成
""".format(datetime.now().strftime("%Y-%m-%d %H:%M:%S"))
    
    attachment = "/root/.openclaw/workspace/reports/韩国电商实操日报汇总.pdf"
    return send_email(subject, body, attachment)

def send_selfmedia_report():
    """发送自媒体学习笔记汇总"""
    subject = f"📝 自媒体学习笔记汇总 - {datetime.now().strftime('%Y-%m-%d')}"
    body = """
你好！

这是所有自媒体学习笔记的汇总报告，包含平台算法、内容创作、变现模式等内容。

📊 报告内容：
- 自媒体运营知识
- 平台算法更新
- 变现模式分析
- 内容创作技巧

📎 附件：自媒体学习笔记汇总.pdf

建议保存此PDF，方便随时查阅。

---
发送时间: {}
由 Kimi Claw 自动生成
""".format(datetime.now().strftime("%Y-%m-%d %H:%M:%S"))
    
    attachment = "/root/.openclaw/workspace/reports/自媒体学习笔记汇总.pdf"
    return send_email(subject, body, attachment)

if __name__ == "__main__":
    if len(sys.argv) > 1:
        if sys.argv[1] == "ecommerce":
            send_ecommerce_report()
        elif sys.argv[1] == "selfmedia":
            send_selfmedia_report()
        elif sys.argv[1] == "all":
            print("📧 正在发送电商报告...")
            send_ecommerce_report()
            print("📧 正在发送自媒体报告...")
            send_selfmedia_report()
            print("✅ 所有报告已发送完成！")
        else:
            print("用法: python3 send_reports.py [ecommerce|selfmedia|all]")
    else:
        print("用法: python3 send_reports.py [ecommerce|selfmedia|all]")
