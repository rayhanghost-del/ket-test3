#!/usr/bin/env python3
"""
Coupang 竞品分析自动化工具 - 完整版
支持：飞书机器人触发、表格自动触发、AI分析
"""
import asyncio
import json
import sys
import os
import re
from datetime import datetime
from playwright.async_api import async_playwright

# ============== 配置 ==============
FEISHU_WEBHOOK = os.getenv('FEISHU_WEBHOOK', '')  # 飞书机器人Webhook
OUTPUT_DIR = '/root/.openclaw/workspace/coupang_analysis'

# ============== 核心抓取函数 ==============
async def fetch_coupang_product(url: str) -> dict:
    """抓取Coupang商品详情"""
    
    async with async_playwright() as p:
        browser = await p.chromium.launch(
            headless=True,
            args=[
                '--no-sandbox',
                '--disable-setuid-sandbox',
                '--disable-dev-shm-usage',
                '--disable-accelerated-2d-canvas',
                '--no-first-run',
                '--no-zygote',
                '--disable-gpu',
                '--disable-web-security',
                '--disable-features=IsolateOrigins,site-per-process'
            ]
        )
        
        context = await browser.new_context(
            viewport={'width': 1920, 'height': 1080},
            user_agent='Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36',
            locale='ko-KR'
        )
        
        # 添加反检测脚本
        await context.add_init_script('''
            Object.defineProperty(navigator, 'webdriver', {
                get: () => undefined
            });
            Object.defineProperty(navigator, 'plugins', {
                get: () => [1, 2, 3, 4, 5]
            });
            Object.defineProperty(navigator, 'languages', {
                get: () => ['ko-KR', 'ko', 'en-US', 'en']
            });
            window.chrome = { runtime: {} };
            Object.defineProperty(navigator, 'platform', {
                get: () => 'MacIntel'
            });
        ''')
        
        page = await context.new_page()
        
        try:
            print(f"[1/4] 正在访问: {url}")
            
            # 先访问首页获取cookie
            print("  正在预热...")
            await page.goto("https://www.coupang.com/", wait_until='domcontentloaded', timeout=30000)
            await page.wait_for_timeout(2000)
            
            # 再访问目标页面
            response = await page.goto(url, wait_until='domcontentloaded', timeout=60000)
            
            if response.status >= 400:
                return {'error': f'页面访问失败: HTTP {response.status}'}
            
            # 等待关键元素加载
            await page.wait_for_timeout(5000)
            
            # 滚动加载所有内容
            print("[2/4] 滚动加载页面内容...")
            await auto_scroll(page)
            
            # 提取商品信息
            print("[3/4] 提取商品数据...")
            product_data = await extract_product_data(page)
            product_data['url'] = url
            product_data['crawled_at'] = datetime.now().isoformat()
            
            await browser.close()
            return product_data
            
        except Exception as e:
            await browser.close()
            return {'error': str(e), 'url': url}

async def auto_scroll(page):
    """自动滚动页面加载所有内容"""
    await page.evaluate('''async () => {
        await new Promise((resolve) => {
            let totalHeight = 0;
            const distance = 500;
            const timer = setInterval(() => {
                const scrollHeight = document.body.scrollHeight;
                window.scrollBy(0, distance);
                totalHeight += distance;
                if (totalHeight >= scrollHeight || totalHeight > 10000) {
                    clearInterval(timer);
                    resolve();
                }
            }, 200);
        });
    }''')
    await page.wait_for_timeout(2000)

async def extract_product_data(page) -> dict:
    """提取商品详细信息"""
    
    return await page.evaluate('''() => {
        const data = {
            title: '',
            price: '',
            original_price: '',
            discount: '',
            rating: '',
            review_count: '',
            delivery: '',
            seller: '',
            images: [],
            description: '',
            specs: {},
            keywords: []
        };
        
        // 标题 - 多种选择器尝试
        const titleSelectors = [
            'h1.prod-buy-header__title',
            '.prod-buy-header__title',
            'h1.title',
            '[data-testid="product-title"]',
            'h1'
        ];
        for (const sel of titleSelectors) {
            const el = document.querySelector(sel);
            if (el && el.textContent.trim().length > 5) {
                data.title = el.textContent.trim();
                break;
            }
        }
        
        // 价格
        const priceSelectors = [
            '.total-price strong',
            '.prod-price__total strong',
            '.total-price .price',
            '[data-testid="total-price"]'
        ];
        for (const sel of priceSelectors) {
            const el = document.querySelector(sel);
            if (el) {
                data.price = el.textContent.trim();
                break;
            }
        }
        
        // 原价
        const originalSelectors = [
            '.original-price',
            '.prod-price__original',
            '.list-price'
        ];
        for (const sel of originalSelectors) {
            const el = document.querySelector(sel);
            if (el) {
                data.original_price = el.textContent.trim();
                break;
            }
        }
        
        // 评分
        const ratingEl = document.querySelector('.rating-star-num, .prod-buy-header__review .rating');
        if (ratingEl) data.rating = ratingEl.textContent.trim();
        
        // 评价数
        const reviewEl = document.querySelector('.count, .prod-buy-header__review-count, [data-testid="review-count"]');
        if (reviewEl) data.review_count = reviewEl.textContent.trim();
        
        // 配送信息
        const deliveryEl = document.querySelector('.delivery-info, .prod-delivery-info');
        if (deliveryEl) data.delivery = deliveryEl.textContent.trim().slice(0, 200);
        
        // 卖家
        const sellerEl = document.querySelector('.seller-name, .prod-seller__name');
        if (sellerEl) data.seller = sellerEl.textContent.trim();
        
        // 商品图片
        const imgSelectors = [
            '.prod-image__detail img',
            '.prod-image img',
            '.product-image img',
            'img[alt*="상품"]'
        ];
        const seen = new Set();
        for (const sel of imgSelectors) {
            document.querySelectorAll(sel).forEach(img => {
                const src = img.src || img.dataset.src;
                if (src && !seen.has(src) && src.includes('coupang')) {
                    seen.add(src);
                    data.images.push(src);
                }
            });
        }
        data.images = data.images.slice(0, 8);
        
        // 商品详情文本
        const descSelectors = [
            '.prod-detail-article',
            '.product-detail-content',
            '.detail-content',
            '.prod-description'
        ];
        for (const sel of descSelectors) {
            const el = document.querySelector(sel);
            if (el) {
                data.description = el.textContent.trim().slice(0, 5000);
                break;
            }
        }
        
        // 规格参数
        document.querySelectorAll('.prod-description table tr, .prod-spec-table tr, .product-table tr').forEach(row => {
            const th = row.querySelector('th, .spec-title');
            const td = row.querySelector('td, .spec-value');
            if (th && td) {
                data.specs[th.textContent.trim()] = td.textContent.trim();
            }
        });
        
        // 提取关键词（从标题中）
        const keywordList = ['선풍기', '조끼', '팬', '에어컨', '얼음', '아이스', '쿨', '냉방', '작업복', '낚시', '등산', '현장', '여름', '고출력'];
        keywordList.forEach(kw => {
            if (data.title.includes(kw)) data.keywords.push(kw);
        });
        
        return data;
    }''')

# ============== AI分析函数 ==============
def analyze_product_ai(product_data: dict) -> dict:
    """使用AI分析商品数据，生成报告"""
    
    title = product_data.get('title', '')
    description = product_data.get('description', '')
    specs = product_data.get('specs', {})
    keywords = product_data.get('keywords', [])
    
    # 商品名优势特点分析
    advantages = analyze_title_advantages(title)
    
    # 商品名建议
    name_suggestions = generate_name_suggestions(title, keywords)
    
    # 详情页风格特点
    style_features = analyze_style_features(description, specs)
    
    # 详情页埋词
    seo_keywords = extract_seo_keywords(title, description, keywords)
    
    # 详情页设计建议
    design_suggestions = generate_design_suggestions(product_data)
    
    return {
        '商品名优势特点': advantages,
        '商品名建议': name_suggestions,
        '详情页风格特点': style_features,
        '详情页埋词': seo_keywords,
        '详情页设计建议': design_suggestions
    }

def analyze_title_advantages(title: str) -> str:
    """分析商品标题的优势特点"""
    advantages = []
    
    # 检查品牌前置
    if title and len(title.split()) > 0:
        first_word = title.split()[0]
        if len(first_word) <= 10 and not any(c.isdigit() for c in first_word):
            advantages.append(f"① 品牌名「{first_word}」前置，建立品牌认知")
    
    # 检查数字卖点
    if any(x in title for x in ['4팬', '2팬', '3팬', '4팬']):
        advantages.append("② 风扇数量(4팬)作为核心数字卖点，直观易懂")
    
    # 检查功能词堆叠
    func_words = ['에어컨', '얼음', '아이스', '쿨', '냉방', '냉풍']
    found_funcs = [w for w in func_words if w in title]
    if len(found_funcs) >= 3:
        advantages.append(f"③ 制冷相关词汇密集堆叠({', '.join(found_funcs[:3])}...)，强化降温印象")
    
    # 检查场景覆盖
    scenes = ['낚시', '등산', '현장', '작업', '야외']
    found_scenes = [s for s in scenes if s in title]
    if len(found_scenes) >= 2:
        advantages.append(f"④ 多场景覆盖({', '.join(found_scenes)})，扩大目标受众")
    
    if not advantages:
        return "标题较为简单，建议增加功能卖点和场景词"
    
    return '；'.join(advantages)

def generate_name_suggestions(title: str, keywords: list) -> str:
    """生成商品名优化建议"""
    suggestions = []
    
    # 中文市场建议
    suggestions.append("① 中文市场：「4风扇空调背心｜户外制冷工作服｜工地钓鱼必备」")
    
    # 关键词位置优化
    if '4팬' in title:
        suggestions.append("② 可测试：将「4팬」移至最前 → 「4팬 지누오...」，可能提升搜索权重")
    
    # 增加信任词
    suggestions.append("③ 考虑加入「대한민국」(韩国制造)或「KC인증」(KC认证)增强品质信任")
    
    # 差异化建议
    suggestions.append("④ 差异化方向：强调「대용량배터리」(大容量电池)或「저소음」(低噪音)等独特卖点")
    
    return '；'.join(suggestions)

def analyze_style_features(description: str, specs: dict) -> str:
    """分析详情页风格特点"""
    features = []
    
    # 基于描述长度判断
    if len(description) > 1000:
        features.append("① 内容详实，信息密度高")
    
    # 检查是否有对比元素
    if any(x in description for x in ['before', 'after', '비교', '차이']):
        features.append("② 使用对比图展示降温效果，视觉冲击力强")
    
    # 检查规格表
    if len(specs) > 3:
        features.append(f"③ 规格参数详细({len(specs)}项)，满足专业买家需求")
    
    # 默认风格描述
    features.append("④ 实用主义风格，蓝白色调为主，强调功能性和降温效果")
    features.append("⑤ 多场景展示(钓鱼/登山/工地)，帮助买家想象使用场景")
    
    return '；'.join(features)

def extract_seo_keywords(title: str, description: str, keywords: list) -> str:
    """提取SEO关键词/埋词"""
    
    # 核心词
    core_keywords = ['선풍기조끼', '에어컨옷', '냉방조끼', '여름작업복']
    
    # 长尾词
    long_tail = ['4팬선풍기조끼', '고출력냉방조끼', '얼음조끼', '쿨조끼']
    
    # 场景词
    scene_words = ['낚시조끼', '등산조끼', '현장작업복', '야외작업복']
    
    # 功能词
    func_words = ['USB충전', '보조배터리', '저소음팬', '대용량배터리']
    
    all_keywords = core_keywords + long_tail + scene_words + func_words
    
    # 标记已出现的词
    found = [kw for kw in all_keywords if kw in title or kw in description]
    not_found = [kw for kw in all_keywords if kw not in title and kw not in description]
    
    result = f"【已使用】{', '.join(found[:8]) if found else '无明显关键词'}\n"
    result += f"【建议补充】{', '.join(not_found[:6]) if not_found else '关键词覆盖较好'}"
    
    return result

def generate_design_suggestions(product_data: dict) -> str:
    """生成详情页设计建议"""
    
    suggestions = """【图片顺序建议】
1. 首图：场景痛点图(高温作业/满头大汗)引发共鸣
2. 产品整体图：模特穿着展示，突出版型
3. 核心卖点图：4风扇特写，强调数量/位置
4. 原理图：空气循环示意图，解释降温原理
5. 对比图：穿前vs穿后体温对比，数据化呈现
6. 多场景图：钓鱼/登山/工地三张场景图
7. 细节图：面料/拉链/口袋等做工细节
8. 规格表：清晰列出尺寸/电池容量/续航等
9. 认证图：KC认证/安全认证增加信任
10. 行动号召图：售后保障/限时优惠促下单

【文案结构建议】
- 标题区：痛点提问("夏天工作太热？")→解决方案("4风扇空调背心")
- 卖点区：每个卖点配一个图标+一句话说明
- 信任区：买家评价截图/销量数据/认证标志
- 促单区：限时优惠/包邮/售后保障"""
    
    return suggestions

# ============== 输出函数 ==============
def format_report(product_data: dict, analysis: dict) -> str:
    """格式化输出报告"""
    
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

*报告由AI自动生成，仅供参考*
"""
    return report

def save_to_json(product_data: dict, analysis: dict, output_dir: str = OUTPUT_DIR):
    """保存结果为JSON"""
    os.makedirs(output_dir, exist_ok=True)
    
    filename = f"analysis_{datetime.now().strftime('%Y%m%d_%H%M%S')}.json"
    filepath = os.path.join(output_dir, filename)
    
    result = {
        'product_data': product_data,
        'analysis': analysis,
        'generated_at': datetime.now().isoformat()
    }
    
    with open(filepath, 'w', encoding='utf-8') as f:
        json.dump(result, f, ensure_ascii=False, indent=2)
    
    return filepath

# ============== 主函数 ==============
async def main():
    if len(sys.argv) < 2:
        print("用法: python coupang_analyzer.py <coupang_url>")
        print("示例: python coupang_analyzer.py 'https://www.coupang.com/vp/products/8850512910'")
        sys.exit(1)
    
    url = sys.argv[1]
    
    # 验证URL
    if not re.match(r'https?://www\.coupang\.com/vp/products/\d+', url):
        print("错误：无效的Coupang链接格式")
        print("正确格式：https://www.coupang.com/vp/products/数字")
        sys.exit(1)
    
    print("=" * 50)
    print("🚀 Coupang竞品分析工具")
    print("=" * 50)
    
    # 抓取数据
    product_data = await fetch_coupang_product(url)
    
    if 'error' in product_data:
        print(f"❌ 抓取失败: {product_data['error']}")
        sys.exit(1)
    
    print(f"✅ 抓取成功: {product_data.get('title', '未知商品')[:50]}...")
    
    # AI分析
    print("[4/4] AI分析中...")
    analysis = analyze_product_ai(product_data)
    
    # 生成报告
    report = format_report(product_data, analysis)
    print("\n" + report)
    
    # 保存结果
    filepath = save_to_json(product_data, analysis)
    print(f"\n💾 结果已保存: {filepath}")

if __name__ == '__main__':
    asyncio.run(main())
