#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
生成Pre-school Homeroom Teacher候选人筛选报告
"""
import json
from datetime import datetime

# 读取筛选结果
with open('/root/.openclaw/workspace/filtered_candidates_preschool.json', 'r', encoding='utf-8') as f:
    candidates = json.load(f)

# 统计信息
nationality_stats = {}
certificate_stats = {'有证书': 0, '无证书': 0}
experience_stats = {'2年以上': 0, '2年以下': 0, '无经验': 0}
visa_stats = {'有工签': 0, '可转聘': 0, '需新办': 0}

for c in candidates:
    # 国籍统计
    nat = c.get('国籍', '未知')
    nationality_stats[nat] = nationality_stats.get(nat, 0) + 1
    
    # 证书统计
    if c.get('有证书'):
        certificate_stats['有证书'] += 1
    else:
        certificate_stats['无证书'] += 1
    
    # 经验统计
    years = c.get('教学经验年数', 0)
    if years >= 2:
        experience_stats['2年以上'] += 1
    elif years > 0:
        experience_stats['2年以下'] += 1
    else:
        experience_stats['无经验'] += 1
    
    # 签证统计
    if c.get('签证可办理'):
        visa_stats['有工签'] += 1
    elif c.get('是否可转聘') and ('可' in str(c.get('是否可转聘')) or '新办' in str(c.get('是否可转聘'))):
        visa_stats['可转聘'] += 1
    else:
        visa_stats['需新办'] += 1

# 生成Markdown报告
report = f"""# Pre-school Homeroom Teacher 候选人筛选报告

**生成时间**: {datetime.now().strftime('%Y-%m-%d %H:%M')}

**岗位要求**:
- 职位：Pre-school Homeroom Teacher（学前班主任/幼儿园）
- 地点：深圳南山
- 国籍：英语母语国家（美国、英国、加拿大、澳大利亚、新西兰、爱尔兰、南非）
- 专业：学前教育或相关专业优先
- 证书：TEFL/TESOL/PGCE等
- 经验：2年以上幼儿教学经验优先
- 年龄：22-40岁
- 签证：能申请Z签（工作签证或可转聘）

---

## 筛选结果概览

| 指标 | 数值 |
|------|------|
| 总候选人数量 | 669 |
| **符合条件候选人** | **{len(candidates)}** |
| 匹配度90分以上 | {sum(1 for c in candidates if c['匹配度分数'] >= 90)} |
| 匹配度80-89分 | {sum(1 for c in candidates if 80 <= c['匹配度分数'] < 90)} |
| 匹配度70-79分 | {sum(1 for c in candidates if 70 <= c['匹配度分数'] < 80)} |
| 匹配度70分以下 | {sum(1 for c in candidates if c['匹配度分数'] < 70)} |

---

## 候选人分布统计

### 按国籍分布

| 国籍 | 人数 | 占比 |
|------|------|------|
"""

for nat, count in sorted(nationality_stats.items(), key=lambda x: -x[1]):
    pct = count / len(candidates) * 100
    report += f"| {nat} | {count} | {pct:.1f}% |\n"

report += f"""
### 按证书情况分布

| 证书情况 | 人数 | 占比 |
|----------|------|------|
| 有TEFL/TESOL/PGCE等证书 | {certificate_stats['有证书']} | {certificate_stats['有证书']/len(candidates)*100:.1f}% |
| 无相关证书 | {certificate_stats['无证书']} | {certificate_stats['无证书']/len(candidates)*100:.1f}% |

### 按教学经验分布

| 经验年限 | 人数 | 占比 |
|----------|------|------|
| 2年以上 | {experience_stats['2年以上']} | {experience_stats['2年以上']/len(candidates)*100:.1f}% |
| 2年以下 | {experience_stats['2年以下']} | {experience_stats['2年以下']/len(candidates)*100:.1f}% |
| 无经验 | {experience_stats['无经验']} | {experience_stats['无经验']/len(candidates)*100:.1f}% |

### 按签证情况分布

| 签证情况 | 人数 | 占比 |
|----------|------|------|
| 已有工作签证 | {visa_stats['有工签']} | {visa_stats['有工签']/len(candidates)*100:.1f}% |
| 可转聘/新办 | {visa_stats['可转聘']} | {visa_stats['可转聘']/len(candidates)*100:.1f}% |
| 需确认 | {visa_stats['需新办']} | {visa_stats['需新办']/len(candidates)*100:.1f}% |

---

## 重点推荐候选人（匹配度90分以上）

"""

# 添加重点推荐候选人
top_candidates = [c for c in candidates if c['匹配度分数'] >= 90]
for i, c in enumerate(top_candidates, 1):
    report += f"""### {i}. {c['姓名']} ({c['国籍']})

| 项目 | 内容 |
|------|------|
| 候选人ID | {c['候选人ID']} |
| 国籍 | {c['国籍']} |
| 学历 | {c['学历']} |
| 专业 | {c['专业']} |
| 年龄 | {c['年龄'] if c['年龄'] else '未填写'} |
| 教学经验 | {c['教学经验']} ({c['教学经验年数']}年) |
| 资格证 | {c['资格证'] if c['资格证'] else '无'} |
| 薪资期望 | {c['薪资期望'] if c['薪资期望'] else '未填写'} |
| 目前所在地 | {c['目前所在地'] if c['目前所在地'] else '未填写'} |
| 意向城市 | {c['意向城市']} |
| 签证类型 | {c['签证类型'] if c['签证类型'] else '未填写'} |
| 跟进记录 | {c['跟进记录'] if c['跟进记录'] else '无'} |
| **匹配度** | **{c['匹配度分数']}/100** |

**匹配理由**: {' | '.join(c['匹配理由'])}

---

"""

# 添加所有候选人列表
report += """## 全部符合条件候选人列表

| 序号 | 候选人ID | 姓名 | 国籍 | 学历 | 专业 | 教学经验 | 资格证 | 薪资期望 | 目前所在地 | 匹配度 |
|------|----------|------|------|------|------|----------|--------|----------|------------|--------|
"""

for i, c in enumerate(candidates, 1):
    cert = c['资格证'] if c['资格证'] else '无'
    if len(cert) > 15:
        cert = cert[:15] + '...'
    salary = c['薪资期望'] if c['薪资期望'] else '未填写'
    if len(salary) > 15:
        salary = salary[:15] + '...'
    location = c['目前所在地'] if c['目前所在地'] else '未填写'
    if len(location) > 10:
        location = location[:10] + '...'
    
    report += f"| {i} | {c['候选人ID']} | {c['姓名']} | {c['国籍']} | {c['学历'] if c['学历'] else '-'} | {c['专业'] if c['专业'] else '-'} | {c['教学经验年数']}年 | {cert} | {salary} | {location} | {c['匹配度分数']} |\n"

report += f"""
---

## 筛选逻辑说明

1. **意向城市**: 包含"深圳"或"南山"
2. **意向职位**: 包含"幼儿园"、"学前"、"Homeroom"、"Early Childhood"
3. **国籍**: 美国、英国、加拿大、澳大利亚、新西兰、爱尔兰、南非
4. **年龄**: 22-40岁（数据缺失不过滤）
5. **证书**: TEFL/TESOL/PGCE/CELTA/教师资格证/QTS/IB/PYP等
6. **经验**: 2年以上优先
7. **签证**: 工作签证或可转聘优先

**匹配度评分规则**:
- 意向城市匹配: 20分
- 意向职位匹配: 25分
- 英语母语国家: 20分
- 有相关证书: 15分
- 教学经验2年以上: 10分
- 签证可办理: 5分
- 教育相关专业: 5分

---

*报告生成时间: {datetime.now().strftime('%Y-%m-%d %H:%M')}*
"""

# 保存报告
with open('/root/.openclaw/workspace/Pre-school_Homeroom_Teacher_筛选报告.md', 'w', encoding='utf-8') as f:
    f.write(report)

print("报告已生成: /root/.openclaw/workspace/Pre-school_Homeroom_Teacher_筛选报告.md")
print(f"\n共筛选出 {len(candidates)} 名符合条件的候选人")
print(f"其中匹配度90分以上: {len(top_candidates)} 名")
