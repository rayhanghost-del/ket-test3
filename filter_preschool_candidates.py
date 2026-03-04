#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
筛选符合Pre-school Homeroom Teacher岗位要求的候选人
"""
import json
import re

# 英语母语国家列表
NATIVE_ENGLISH_COUNTRIES = ['美国', '英国', '加拿大', '澳大利亚', '新西兰', '爱尔兰', '南非']

# 目标城市关键词
TARGET_CITIES = ['深圳', '南山']

# 目标职位关键词
TARGET_POSITIONS = ['幼儿园', '学前', 'Homeroom', 'Early Childhood', 'kindergarten', 'preschool']

# 证书关键词
CERTIFICATE_KEYWORDS = ['TEFL', 'TESOL', 'PGCE', 'CELTA', '教师资格证', 'QTS', 'IB', 'PYP']

def extract_years_from_experience(exp_text):
    """从教学经验文本中提取年数"""
    if not exp_text:
        return 0
    
    # 匹配 "X年" 或 "X years" 模式
    patterns = [
        r'(\d+)\s*年',
        r'(\d+)\s*years?',
        r'(\d+)\+?\s*年',
    ]
    
    years = []
    for pattern in patterns:
        matches = re.findall(pattern, str(exp_text), re.IGNORECASE)
        years.extend([int(m) for m in matches])
    
    return max(years) if years else 0

def check_city_match(city_text):
    """检查意向城市是否匹配"""
    if not city_text:
        return False
    city_text = str(city_text).lower()
    for city in TARGET_CITIES:
        if city.lower() in city_text:
            return True
    return False

def check_position_match(position_text):
    """检查意向职位是否匹配"""
    if not position_text:
        return False
    position_text = str(position_text).lower()
    for pos in TARGET_POSITIONS:
        if pos.lower() in position_text:
            return True
    return False

def check_certificate(certificate_text):
    """检查是否有相关证书"""
    if not certificate_text:
        return False, []
    
    cert_text = str(certificate_text).upper()
    found_certs = []
    
    for cert in CERTIFICATE_KEYWORDS:
        if cert.upper() in cert_text:
            found_certs.append(cert)
    
    return len(found_certs) > 0, found_certs

def check_visa_eligible(visa_text, transferable_text):
    """检查是否能申请Z签或可转聘"""
    if not visa_text:
        # 检查是否可转聘
        if transferable_text and ('可' in str(transferable_text) or 'yes' in str(transferable_text).lower()):
            return True
        return False
    
    visa_text = str(visa_text).lower()
    eligible_keywords = ['工作签证', '工签', 'z签', '工作', 'work']
    
    for keyword in eligible_keywords:
        if keyword in visa_text:
            return True
    
    # 检查是否可转聘
    if transferable_text and ('可' in str(transferable_text) or 'yes' in str(transferable_text).lower()):
        return True
    
    return False

def check_age_eligible(age):
    """检查年龄是否在22-40岁之间"""
    if age is None:
        return True  # 如果年龄未知，不过滤
    try:
        age_val = float(age)
        return 22 <= age_val <= 40
    except:
        return True

def calculate_match_score(candidate):
    """计算匹配度分数"""
    score = 0
    reasons = []
    
    # 1. 意向城市匹配 (20分)
    if check_city_match(candidate.get('意向城市')):
        score += 20
        reasons.append('意向城市匹配')
    
    # 2. 意向职位匹配 (25分)
    if check_position_match(candidate.get('意向职位')):
        score += 25
        reasons.append('意向职位匹配')
    
    # 3. 国籍匹配 (20分)
    nationality = candidate.get('国籍', '')
    if nationality in NATIVE_ENGLISH_COUNTRIES:
        score += 20
        reasons.append('英语母语国家')
    
    # 4. 证书匹配 (15分)
    has_cert, certs = check_certificate(candidate.get('资格证'))
    if has_cert:
        score += 15
        reasons.append(f'有证书({", ".join(certs)})')
    
    # 5. 教学经验 (10分)
    years = extract_years_from_experience(candidate.get('教学经验'))
    if years >= 2:
        score += 10
        reasons.append(f'教学经验{years}年')
    elif years > 0:
        score += 5
        reasons.append(f'教学经验{years}年')
    
    # 6. 签证匹配 (5分)
    if check_visa_eligible(candidate.get('签证类型'), candidate.get('是否可转聘')):
        score += 5
        reasons.append('签证可办理')
    
    # 7. 专业匹配 (5分)
    major = str(candidate.get('专业', '')).lower()
    if any(keyword in major for keyword in ['教育', '学前', 'early childhood', 'education']):
        score += 5
        reasons.append('教育相关专业')
    
    return score, reasons

def filter_candidates(data):
    """筛选候选人"""
    results = []
    
    for candidate in data:
        # 基本条件检查
        # 1. 检查国籍
        nationality = candidate.get('国籍', '')
        if nationality not in NATIVE_ENGLISH_COUNTRIES:
            continue
        
        # 2. 检查年龄
        if not check_age_eligible(candidate.get('年龄')):
            continue
        
        # 3. 检查意向城市
        if not check_city_match(candidate.get('意向城市')):
            continue
        
        # 4. 检查意向职位
        if not check_position_match(candidate.get('意向职位')):
            continue
        
        # 计算匹配度
        score, reasons = calculate_match_score(candidate)
        
        # 提取教学经验年数
        years = extract_years_from_experience(candidate.get('教学经验'))
        
        # 检查证书
        has_cert, certs = check_certificate(candidate.get('资格证'))
        
        # 检查签证
        visa_eligible = check_visa_eligible(candidate.get('签证类型'), candidate.get('是否可转聘'))
        
        results.append({
            '候选人ID': candidate.get('候选人ID', ''),
            '姓名': candidate.get('姓名', ''),
            '国籍': nationality,
            '学历': candidate.get('学历', ''),
            '专业': candidate.get('专业', ''),
            '年龄': candidate.get('年龄', ''),
            '教学经验': candidate.get('教学经验', ''),
            '教学经验年数': years,
            '资格证': candidate.get('资格证', ''),
            '有证书': has_cert,
            '证书类型': certs,
            '薪资期望': candidate.get('薪资期望', ''),
            '目前所在地': candidate.get('目前所在地', ''),
            '意向城市': candidate.get('意向城市', ''),
            '意向职位': candidate.get('意向职位', ''),
            '签证类型': candidate.get('签证类型', ''),
            '是否可转聘': candidate.get('是否可转聘', ''),
            '签证可办理': visa_eligible,
            '跟进记录': candidate.get('跟进记录', ''),
            '匹配度分数': score,
            '匹配理由': reasons
        })
    
    # 按匹配度排序
    results.sort(key=lambda x: x['匹配度分数'], reverse=True)
    return results

def main():
    # 读取数据
    with open('/root/.openclaw/workspace/records_to_import_final.json', 'r', encoding='utf-8') as f:
        data = json.load(f)
    
    print(f"总候选人数量: {len(data)}")
    
    # 筛选
    filtered = filter_candidates(data)
    
    print(f"\n符合条件的候选人数量: {len(filtered)}")
    print("\n" + "="*100)
    
    # 输出结果
    for i, candidate in enumerate(filtered, 1):
        print(f"\n【{i}】候选人ID: {candidate['候选人ID']}")
        print(f"姓名: {candidate['姓名']}")
        print(f"国籍: {candidate['国籍']}")
        print(f"学历: {candidate['学历']}")
        print(f"专业: {candidate['专业']}")
        print(f"年龄: {candidate['年龄']}")
        print(f"教学经验: {candidate['教学经验']} ({candidate['教学经验年数']}年)")
        print(f"资格证: {candidate['资格证']}")
        print(f"薪资期望: {candidate['薪资期望']}")
        print(f"目前所在地: {candidate['目前所在地']}")
        print(f"意向城市: {candidate['意向城市']}")
        print(f"意向职位: {candidate['意向职位']}")
        print(f"签证类型: {candidate['签证类型']}")
        print(f"是否可转聘: {candidate['是否可转聘']}")
        print(f"跟进记录: {candidate['跟进记录']}")
        print(f"匹配度分数: {candidate['匹配度分数']}/100")
        print(f"匹配理由: {' | '.join(candidate['匹配理由'])}")
        print("-"*100)
    
    # 保存结果到文件
    with open('/root/.openclaw/workspace/filtered_candidates_preschool.json', 'w', encoding='utf-8') as f:
        json.dump(filtered, f, ensure_ascii=False, indent=2)
    
    print(f"\n结果已保存到: /root/.openclaw/workspace/filtered_candidates_preschool.json")
    
    return filtered

if __name__ == '__main__':
    main()
