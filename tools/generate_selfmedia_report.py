#!/usr/bin/env python3
"""
生成自媒体学习笔记汇总
"""
import os
from datetime import datetime

WORKSPACE = "/root/.openclaw/workspace"
OUTPUT_DIR = f"{WORKSPACE}/reports"

def get_all_selfmedia_files():
    """获取所有自媒体学习笔记文件"""
    log_dir = f"{WORKSPACE}/memory/self-log"
    files = []
    keywords = ['self-media', 'self_media', '自媒体']
    if os.path.exists(log_dir):
        for f in os.listdir(log_dir):
            if any(k in f.lower() for k in keywords) and f.endswith('.md'):
                files.append(os.path.join(log_dir, f))
    return sorted(files, reverse=True)

def generate_html_report():
    """生成HTML格式的自媒体报告"""
    files = get_all_selfmedia_files()
    
    html = f"""
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>自媒体学习笔记汇总</title>
    <style>
        body {{ font-family: "Microsoft YaHei", "SimSun", sans-serif; line-height: 1.8; max-width: 900px; margin: 0 auto; padding: 40px; }}
        h1 {{ color: #1a1a1a; border-bottom: 3px solid #e91e63; padding-bottom: 10px; }}
        h2 {{ color: #333; margin-top: 40px; border-left: 4px solid #e91e63; padding-left: 15px; }}
        .section {{ background: #fce4ec; padding: 20px; margin: 20px 0; border-radius: 8px; }}
        .date {{ color: #666; font-size: 0.9em; margin-bottom: 10px; }}
        pre {{ background: #f4f4f4; padding: 15px; border-radius: 5px; overflow-x: auto; white-space: pre-wrap; }}
        strong {{ color: #c2185b; }}
    </style>
</head>
<body>
    <h1>📝 自媒体学习笔记汇总</h1>
    <p style="color: #666;">生成时间: {datetime.now().strftime("%Y-%m-%d %H:%M:%S")}</p>
    <p style="color: #666;">数据来源: 自媒体运营学习笔记</p>
"""
    
    for filepath in files:
        date_str = os.path.basename(filepath).replace('.md', '')
        with open(filepath, 'r', encoding='utf-8') as f:
            content = f.read()
        
        # 转义HTML特殊字符
        content = content.replace('&', '&amp;').replace('<', '&lt;').replace('>', '&gt;')
        
        html += f"""
    <div class="section">
        <div class="date">📅 {date_str}</div>
        <pre>{content}</pre>
    </div>
"""
    
    html += """
</body>
</html>
"""
    
    os.makedirs(OUTPUT_DIR, exist_ok=True)
    html_path = f"{OUTPUT_DIR}/自媒体学习笔记汇总.html"
    with open(html_path, 'w', encoding='utf-8') as f:
        f.write(html)
    
    print(f"✅ 自媒体HTML报告已生成: {html_path}")
    return html_path

if __name__ == "__main__":
    generate_html_report()
