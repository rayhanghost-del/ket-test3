#!/usr/bin/env python3
"""
生成韩国电商实操日报汇总文档
"""
import os
import re
from datetime import datetime

WORKSPACE = "/root/.openclaw/workspace"
OUTPUT_DIR = f"{WORKSPACE}/reports"

def get_all_daily_study_files():
    """获取所有电商实操日报文件"""
    log_dir = f"{WORKSPACE}/memory/self-log"
    files = []
    if os.path.exists(log_dir):
        for f in os.listdir(log_dir):
            if f.endswith("-daily-study.md"):
                files.append(os.path.join(log_dir, f))
    return sorted(files, reverse=True)

def parse_case_content(content):
    """解析案例内容，提取分类"""
    cases = []
    current_case = {}
    lines = content.split('\n')
    
    for line in lines:
        if '【问题案例' in line:
            if current_case:
                cases.append(current_case)
            current_case = {'title': line.strip(), 'type': '问题案例', 'content': []}
        elif '【运营技巧】' in line or '【技巧】' in line:
            if current_case:
                cases.append(current_case)
            current_case = {'title': line.strip(), 'type': '运营技巧', 'content': []}
        elif '原文链接' in line and current_case:
            current_case['source'] = line.strip()
            current_case['content'].append(line)
        elif current_case:
            current_case['content'].append(line)
    
    if current_case:
        cases.append(current_case)
    
    return cases

def generate_html_report():
    """生成HTML格式的汇总报告"""
    files = get_all_daily_study_files()
    
    all_cases = []
    all_tips = []
    
    for filepath in files:
        date_str = os.path.basename(filepath).replace("-daily-study.md", "")
        with open(filepath, 'r', encoding='utf-8') as f:
            content = f.read()
        
        cases = parse_case_content(content)
        for case in cases:
            case['date'] = date_str
            if case['type'] == '问题案例':
                all_cases.append(case)
            else:
                all_tips.append(case)
    
    # 生成HTML
    html = f"""<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>韩国电商实操日报汇总</title>
    <style>
        body {{ font-family: "Microsoft YaHei", "SimSun", sans-serif; line-height: 1.8; max-width: 900px; margin: 0 auto; padding: 40px; }}
        h1 {{ color: #1a1a1a; border-bottom: 3px solid #0066cc; padding-bottom: 10px; }}
        h2 {{ color: #333; margin-top: 40px; border-left: 4px solid #0066cc; padding-left: 15px; }}
        h3 {{ color: #0066cc; margin-top: 30px; }}
        .case {{ background: #f8f9fa; padding: 20px; margin: 20px 0; border-radius: 8px; border-left: 4px solid #28a745; }}
        .tip {{ background: #fff3cd; padding: 20px; margin: 20px 0; border-radius: 8px; border-left: 4px solid #ffc107; }}
        .date {{ color: #666; font-size: 0.9em; margin-bottom: 10px; }}
        .source {{ color: #0066cc; font-size: 0.9em; margin-top: 15px; word-break: break-all; }}
        .toc {{ background: #e9ecef; padding: 20px; border-radius: 8px; margin: 20px 0; }}
        .toc ul {{ list-style-type: none; padding-left: 0; }}
        .toc li {{ margin: 8px 0; }}
        .toc a {{ color: #0066cc; text-decoration: none; }}
        .toc a:hover {{ text-decoration: underline; }}
        pre {{ background: #f4f4f4; padding: 15px; border-radius: 5px; overflow-x: auto; }}
        strong {{ color: #d32f2f; }}
        .summary {{ background: #e3f2fd; padding: 20px; border-radius: 8px; margin: 20px 0; }}
    </style>
</head>
<body>
    <h1>📚 韩国电商实操日报汇总</h1>
    <p style="color: #666;">生成时间: {datetime.now().strftime("%Y-%m-%d %H:%M:%S")}</p>
    <p style="color: #666;">数据来源: 2026-03-14 至 {datetime.now().strftime("%Y-%m-%d")}</p>
    
    <div class="summary">
        <h3>📊 数据概览</h3>
        <ul>
            <li>问题案例数量: {len(all_cases)} 个</li>
            <li>运营技巧数量: {len(all_tips)} 个</li>
            <li>覆盖天数: {len(files)} 天</li>
        </ul>
    </div>
    
    <div class="toc">
        <h3>📑 目录</h3>
        <ul>
            <li><a href="#cases">一、问题案例汇总 ({len(all_cases)}个)</a></li>
            <li><a href="#tips">二、运营技巧汇总 ({len(all_tips)}个)</a></li>
        </ul>
    </div>
    
    <h2 id="cases">一、问题案例汇总</h2>
"""
    
    # 添加问题案例
    for i, case in enumerate(all_cases, 1):
        content_html = '\n'.join(case['content'])
        content_html = content_html.replace('\n', '<br>')
        source_html = case.get('source', '')
        
        html += f"""
    <div class="case">
        <div class="date">📅 {case['date']}</div>
        <h3>案例 {i}: {case['title'].replace('【问题案例', '').replace('】', '')}</h3>
        <div>{content_html}</div>
        <div class="source">🔗 {source_html}</div>
    </div>
"""
    
    html += f"""
    
    <h2 id="tips">二、运营技巧汇总</h2>
"""
    
    # 添加运营技巧
    for i, tip in enumerate(all_tips, 1):
        content_html = '\n'.join(tip['content'])
        content_html = content_html.replace('\n', '<br>')
        source_html = tip.get('source', '')
        
        html += f"""
    <div class="tip">
        <div class="date">📅 {tip['date']}</div>
        <h3>技巧 {i}: {tip['title'].replace('【运营技巧】', '').replace('【技巧】', '')}</h3>
        <div>{content_html}</div>
        <div class="source">🔗 {source_html}</div>
    </div>
"""
    
    html += """
</body>
</html>
"""
    
    # 保存HTML文件
    os.makedirs(OUTPUT_DIR, exist_ok=True)
    html_path = f"{OUTPUT_DIR}/韩国电商实操日报汇总.html"
    with open(html_path, 'w', encoding='utf-8') as f:
        f.write(html)
    
    print(f"✅ HTML报告已生成: {html_path}")
    return html_path, len(all_cases), len(all_tips)

if __name__ == "__main__":
    generate_html_report()
