#!/usr/bin/env python3
"""
Coupang 竞品分析工具 - cloudscraper版本
用于绕过基本的反爬防护
"""
import cloudscraper
from bs4 import BeautifulSoup
import json
import sys
import re
from datetime import datetime

def fetch_coupang_simple(url: str) -> dict:
    """使用cloudscraper抓取Coupang"""
    
    scraper = cloudscraper.create_scraper(
        browser={
            'browser': 'chrome',
            'platform': 'windows',
            'desktop': True
        }
    )
    
    headers = {
        'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36',
        'Accept': 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8',
        'Accept-Language': 'ko-KR,ko;q=0.9,en-US;q=0.8,en;q=0.7',
        'Accept-Encoding': 'gzip, deflate, br',
        'Connection': 'keep-alive',
        'Upgrade-Insecure-Requests': '1'
    }
    
    try:
        print(f"[1/3] 正在抓取: {url}")
        
        # 先访问首页
        print("  预热中...")
        scraper.get('https://www.coupang.com/', headers=headers, timeout=30)
        
        # 访问目标页面
        response = scraper.get(url, headers=headers, timeout=60)
        print(f"  状态码: {response.status_code}")
        
        if response.status_code != 200:
            return {'error': f'HTTP {response.status_code}', 'url': url}
        
        # 解析HTML
        print("[2/3] 解析页面内容...")
        soup = BeautifulSoup(response.text, 'html.parser')
        
        data = {
            'url': url,
            'crawled_at': datetime.now().isoformat(),
            'title': '',
            'price': '',
            'original_price': '',
            'rating': '',
            'review_count': '',
            'seller': '',
            'images': [],
            'description': '',
            'specs': {},
            'keywords': []
        }
        
        # 提取标题
        title_selectors = [
            'h1.prod-buy-header__title',
            '.prod-buy-header__title',
            'h1.title',
            'h1'
        ]
        for selector in title_selectors:
            el = soup.select_one(selector)
            if el and len(el.get_text(strip=True)) > 5:
                data['title'] = el.get_text(strip=True)
                break
        
        # 提取价格
        price_selectors = [
            '.total-price strong',
            '.prod-price__total strong',
            '.total-price .price'
        ]
        for selector in price_selectors:
            el = soup.select_one(selector)
            if el:
                data['price'] = el.get_text(strip=True)
                break
        
        # 提取评分
        rating_el = soup.select_one('.rating-star-num, .prod-buy-header__review .rating')
        if rating_el:
            data['rating'] = rating_el.get_text(strip=True)
        
        # 提取评价数
        review_el = soup.select_one('.count, .prod-buy-header__review-count')
        if review_el:
            data['review_count'] = review_el.get_text(strip=True)
        
        # 提取卖家
        seller_el = soup.select_one('.seller-name, .prod-seller__name')
        if seller_el:
            data['seller'] = seller_el.get_text(strip=True)
        
        # 提取图片
        for img in soup.select('.prod-image__detail img, .prod-image img'):
            src = img.get('src') or img.get('data-src')
            if src and 'coupang' in src:
                data['images'].append(src)
        data['images'] = list(set(data['images']))[:8]
        
        # 提取详情文本
        desc_selectors = ['.prod-detail-article', '.product-detail-content', '.detail-content']
        for selector in desc_selectors:
            el = soup.select_one(selector)
            if el:
                data['description'] = el.get_text(separator=' ', strip=True)[:5000]
                break
        
        # 提取规格
        for row in soup.select('.prod-description table tr, .prod-spec-table tr'):
            th = row.select_one('th')
            td = row.select_one('td')
            if th and td:
                data['specs'][th.get_text(strip=True)] = td.get_text(strip=True)
        
        # 提取关键词
        keyword_list = ['선풍기', '조끼', '팬', '에어컨', '얼음', '아이스', '쿨', '냉방', '작업복', '낚시', '등산', '현장', '여름', '고출력']
        for kw in keyword_list:
            if kw in data['title']:
                data['keywords'].append(kw)
        
        print(f"  标题: {data['title'][:60]}...")
        print(f"  价格: {data['price']}")
        print(f"  评分: {data['rating']}")
        
        return data
        
    except Exception as e:
        return {'error': str(e), 'url': url}

# 复用 coupang_analyzer.py 中的分析函数
def analyze_product_ai(product_data: dict) -> dict:
    """AI分析商品数据"""
    
    title = product_data.get('title', '')
    description = product_data.get('description', '')
    specs = product_data.get('specs', {})
    keywords = product_data.get('keywords', [])
    
    # 商品名优势特点
    advantages = analyze_title_advantages(title)
    
    # 商品名建议
    name_suggestions = generate_name_suggestions(title, keywords)
    
    # 详情页风格
    style_features = analyze_style_features(description, specs)
    
    # SEO关键词
    seo_keywords = extract_seo_keywords(title, description, keywords)
    
    # 设计建议
    design_suggestions = generate_design_suggestions(product_data)
    
    return {
        '商品名优势特点': advantages,
        '商品名建议': name_suggestions,
        '详情页风格特点': style_features,
        '详情页埋词': seo_keywords,
        '详情页设计建议': design_suggestions
    }

def analyze_title_advantages(title: str) -> str:
    advantages = []
    
    if title and len(title.split()) > 0:
        first_word = title.split()[0]
        if len(first_word) <= 10:
            advantages.append(f"① 品牌名「{first_word}」前置，建立品牌认知")
    
    if any(x in title for x in ['4팬', '2팬', '3팬']):
        advantages.append("② 风扇数量作为核心数字卖点，直观易懂")
    
    func_words = ['에어컨', '얼음', '아이스', '쿨', '냉방', '냉풍']
    found_funcs = [w for w in func_words if w in title]
    if len(found_funcs) >= 3:
        advantages.append(f"③ 制冷词汇密集堆叠({', '.join(found_funcs[:3])}...)，强化降温印象")
    
    scenes = ['낚시', '등산', '현장', '작업', '야외']
    found_scenes = [s for s in scenes if s in title]
    if len(found_scenes) >= 2:
        advantages.append(f"④ 多场景覆盖({', '.join(found_scenes)})，扩大受众")
    
    if not advantages:
        return "标题较为简单，建议增加功能卖点和场景词"
    
    return '；'.join(advantages)

def generate_name_suggestions(title: str, keywords: list) -> str:
    suggestions = []
    suggestions.append("① 中文市场：「4风扇空调背心｜户外制冷工作服｜工地钓鱼必备」")
    
    if '4팬' in title:
        suggestions.append("② 可测试：将「4팬」移至最前 → 「4팬 지누오...」，可能提升搜索权重")
    
    suggestions.append("③ 考虑加入「대한민국」(韩国制造)或「KC인증」(KC认证)增强品质信任")
    suggestions.append("④ 差异化：强调「대용량배터리」(大容量电池)或「저소음」(低噪音)等独特卖点")
    
    return '；'.join(suggestions)

def analyze_style_features(description: str, specs: dict) -> str:
    features = []
    
    if len(description) > 1000:
        features.append("① 内容详实，信息密度高")
    
    if any(x in description for x in ['before', 'after', '비교', '차이']):
        features.append("② 使用对比图展示降温效果")
    
    if len(specs) > 3:
        features.append(f"③ 规格参数详细({len(specs)}项)")
    
    features.append("④ 实用主义风格，蓝白色调，强调功能性")
    features.append("⑤ 多场景展示(钓鱼/登山/工地)")
    
    return '；'.join(features)

def extract_seo_keywords(title: str, description: str, keywords: list) -> str:
    core_keywords = ['선풍기조끼', '에어컨옷', '냉방조끼', '여름작업복']
    long_tail = ['4팬선풍기조끼', '고출력냉방조끼', '얼음조끼', '쿨조끼']
    scene_words = ['낚시조끼', '등산조끼', '현장작업복', '야외작업복']
    func_words = ['USB충전', '보조배터리', '저소음팬', '대용량배터리']
    
    all_keywords = core_keywords + long_tail + scene_words + func_words
    
    found = [kw for kw in all_keywords if kw in title or kw in description]
    not_found = [kw for kw in all_keywords if kw not in title and kw not in description]
    
    result = f"【已使用】{', '.join(found[:8]) if found else '无明显关键词'}\n"
    result += f"【建议补充】{', '.join(not_found[:6]) if not_found else '关键词覆盖较好'}"
    
    return result

def generate_design_suggestions(product_data: dict) -> str:
    return """【图片顺序】
1. 场景痛点图(高温作业)引发共鸣
2. 产品整体图：模特穿着展示
3. 核心卖点图：4风扇特写
4. 原理图：空气循环示意图
5. 对比图：穿前vs穿后体温对比
6. 多场景图：钓鱼/登山/工地
7. 细节图：面料/拉链/口袋
8. 规格表：尺寸/电池容量/续航
9. 认证图：KC认证增加信任
10. 行动号召图：售后保障促下单

【文案结构】
- 标题区：痛点提问→解决方案
- 卖点区：图标+一句话说明
- 信任区：评价截图/销量数据
- 促单区：限时优惠/包邮"""

def format_report(product_data: dict, analysis: dict) -> str:
    report = f"""
# 📊 Coupang竞品分析报告

## 基础信息
- **商品链接**: {product_data.get('url', '')}
- **原商品名**: {product_data.get('title', '未获取')}
- **价格**: {product_data.get('price', '未获取')}
- **评分**: {product_data.get('rating', '未获取')} ({product_data.get('review_count', '0')}条评价)
- **卖家**: {product_data.get('seller', '未获取')}
- **抓取时间**: {product_data.get('crawled_at', '')}

---

## 分析结果

### 1️⃣ 商品名优势特点
{analysis.get('商品名优势特点', '')}

### 2️⃣ 商品名建议
{analysis.get('商品名建议', '')}

### 3️⃣ 详情页风格特点
{analysis.get('详情页风格特点', '')}

### 4️⃣ 详情页埋词
{analysis.get('详情页埋词', '')}

### 5️⃣ 详情页设计建议
{analysis.get('详情页设计建议', '')}

---

*报告由AI自动生成*
"""
    return report

def main():
    if len(sys.argv) < 2:
        print("用法: python coupang_scraper.py <coupang_url>")
        sys.exit(1)
    
    url = sys.argv[1]
    
    if not re.match(r'https?://www\.coupang\.com/vp/products/\d+', url):
        print("错误：无效的Coupang链接格式")
        sys.exit(1)
    
    print("=" * 50)
    print("🚀 Coupang竞品分析工具 (CloudScraper版)")
    print("=" * 50)
    
    # 抓取
    product_data = fetch_coupang_simple(url)
    
    if 'error' in product_data:
        print(f"❌ 抓取失败: {product_data['error']}")
        # 输出JSON格式错误，方便调用方处理
        print(json.dumps({'success': False, 'error': product_data['error']}, ensure_ascii=False))
        sys.exit(1)
    
    print(f"✅ 抓取成功")
    
    # 分析
    print("[3/3] AI分析中...")
    analysis = analyze_product_ai(product_data)
    
    # 输出报告
    report = format_report(product_data, analysis)
    print("\n" + report)
    
    # 输出JSON结果（供其他程序调用）
    result = {
        'success': True,
        'product_data': product_data,
        'analysis': analysis
    }
    print("\n" + "=" * 50)
    print("JSON_OUTPUT_START")
    print(json.dumps(result, ensure_ascii=False))
    print("JSON_OUTPUT_END")

if __name__ == '__main__':
    main()
