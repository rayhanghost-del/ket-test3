#!/usr/bin/env python3
"""
发送Markdown格式邮件测试
"""
import sys
sys.path.insert(0, '/root/.openclaw/workspace/tools')
from send_email import send_email
from datetime import datetime

def send_markdown_test():
    """发送Markdown格式测试邮件"""
    subject = f"🧪 Markdown格式测试 - {datetime.now().strftime('%Y-%m-%d %H:%M')}"
    
    # Markdown格式的正文
    body = """# 📚 测试邮件

这是一封 **Markdown格式** 的测试邮件。

## 测试内容

### 列表演示
- 项目一
- 项目二
- 项目三

### 代码块
```python
print("Hello World")
```

### 表格
| 列1 | 列2 |
|-----|-----|
| 数据1 | 数据2 |

### 链接
[点击访问OpenClaw文档](https://docs.openclaw.ai)

---

**发送时间**: {timestamp}
**发送者**: Kimi Claw

如果这封邮件能正常显示格式，说明纯文本Markdown邮件可以正常发送。
""".format(timestamp=datetime.now().strftime("%Y-%m-%d %H:%M:%S"))
    
    return send_email(subject, body)

if __name__ == "__main__":
    print("📧 正在发送Markdown测试邮件...")
    send_markdown_test()
    print("✅ 测试邮件已发送！")
