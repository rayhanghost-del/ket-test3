# Coupang竞品数据抓取与竞品分析工作流

## 工作流总览

```
┌─────────────────────────────────────────────────────────────────┐
│                    阶段1：数据抓取 (QoderWork)                    │
├─────────────────────────────────────────────────────────────────┤
│  1. 配置反爬虫参数 → 2. 批量抓取页面 → 3. 数据清洗 → 4. 导出CSV   │
└─────────────────────────────┬───────────────────────────────────┘
                              │ CSV文件
┌─────────────────────────────▼───────────────────────────────────┐
│                    阶段2：竞品分析 (Kimi)                         │
├─────────────────────────────────────────────────────────────────┤
│  1. 读取CSV → 2. 数据分析 → 3. 生成报告 → 4. 飞书文档输出         │
└─────────────────────────────────────────────────────────────────┘
```

---

## 阶段1：QoderWork抓取详细指令

### 指令模板

```
执行Coupang竞品数据抓取任务，遵循以下规范：

【目标】
- 抓取关键词：{关键词，如"워터픽"}
- 抓取页数：前2-3页（约80-120个商品）
- 输出格式：CSV，包含所有字段

【反爬虫保护设置】
1. 请求间隔：每页间隔 8-15秒（随机），每商品间隔 2-4秒（随机）
2. 页面加载等待：打开页面后等待 5-8秒，确保酷铺插件加载完成
3. 用户代理轮换：使用常见浏览器UA
4. 单会话时长：连续抓取不超过30分钟，暂停10分钟后再继续
5. 异常处理：遇到验证码/封禁提示立即停止，保存已抓取数据

【需要抓取的数据字段】
基础字段：
- 商品ID
- 商品名称（韩文原名）
- 品牌名
- 商品链接

价格字段：
- 原价
- 折扣价/酷胖价
- 折扣率
- 是否火箭配送(로켓배송)

销量/流量字段（酷铺插件数据）：
- 上架时间
- 月点击量(월 클릭수)
- 月成交量(월 거래량)
- 28天销量（Coupang页面显示）
- 日均销量（如有）

评价字段：
- 评分（星数）
- 评论数
- 好评率（如有）

其他：
- 商品图片URL
- 类目信息

【执行步骤】
1. 打开Chrome，确认酷铺插件已安装启用
2. 访问 https://www.coupang.com/np/search?q={关键词}
3. 按上述反爬虫设置逐页抓取
4. 每抓取完一页保存中间结果（防止中断丢失）
5. 数据清洗：统一价格格式、处理空值、去重
6. 保存为CSV：{关键词}_coupang_data_{日期}.csv
7. 发送CSV文件给我

【注意事项】
- 只抓取前2-3页，深度抓取增加封禁风险
- 如遇"로켓배송"筛选结果，优先抓取这些（代表Coupang认可）
- 夜间抓取(22:00-08:00)时适当降低频率
```

---

## 抓取页数合理性说明

| 页数 | 商品数量 | 覆盖度 | 风险等级 | 建议场景 |
|------|---------|--------|----------|----------|
| **1页** | ~40个 | 头部热门 | ⭐ 低 | 快速概览、实时竞品监控 |
| **2页** | ~80个 | 主要竞品 | ⭐⭐ 中低 | **推荐**，覆盖TOP 80%销量 |
| **3页** | ~120个 | 完整市场 | ⭐⭐⭐ 中 | **推荐**，全面竞争分析 |
| **5页+** | 200+个 | 长尾市场 | ⭐⭐⭐⭐⭐ 高 | 不建议，反爬虫风险极高 |

**结论：** 抓取前2-3页（80-120个商品）是性价比最优的选择。

---

## 反爬虫保护机制详解

### 1. 时间间隔设置

```python
import random
import time

# 页间间隔：8-15秒随机
page_interval = random.uniform(8, 15)

# 商品间间隔：2-4秒随机  
item_interval = random.uniform(2, 4)

# 每10页长暂停：60-120秒
if page_count % 10 == 0:
    long_pause = random.uniform(60, 120)
    time.sleep(long_pause)
```

### 2. 浏览器行为模拟

```python
# 随机滚动页面（模拟真人浏览）
driver.execute_script("window.scrollTo(0, random.randint(300, 800))")
time.sleep(random.uniform(1, 3))

# 偶尔点击商品详情（增加真实度）
if random.random() < 0.1:  # 10%概率
    product.click()
    time.sleep(random.uniform(3, 5))
    driver.back()
```

### 3. 会话管理

```python
# 单次会话限制
MAX_SESSION_TIME = 30 * 60  # 30分钟
PAUSE_TIME = 10 * 60        # 暂停10分钟

# 每日总量限制
MAX_PRODUCTS_PER_DAY = 300  # 每天最多300个商品
```

### 4. 异常检测与处理

```python
def check_blocked(driver):
    """检测是否触发反爬虫"""
    indicators = [
        "captcha" in driver.page_source.lower(),
        "접속이 차단" in driver.page_source,  # 韩文"访问被阻止"
        "일시적인 오류" in driver.page_source,  # "暂时错误"
        driver.current_url != expected_url,
        len(driver.find_elements(By.CLASS_NAME, "search-product")) == 0
    ]
    return any(indicators)

# 使用示例
if check_blocked(driver):
    save_checkpoint(data)  # 保存已抓取数据
    raise Exception("检测到封禁，已保存中间数据，请稍后重试")
```

---

## 数据输出规范

### CSV字段定义

```csv
product_id,product_name,brand,original_price,coupang_price,discount_rate,rocket_delivery,monthly_clicks,monthly_sales,28day_sales,daily_sales,rating,review_count,listing_date,product_url,category,scraped_at
```

### 字段说明

| 字段名 | 类型 | 说明 | 示例 |
|--------|------|------|------|
| product_id | string | Coupang商品ID | 123456789 |
| product_name | string | 韩文商品名 | 워터픽 WP-670K |
| brand | string | 品牌名 | Waterpik |
| original_price | int | 原价(韩元) | 219000 |
| coupang_price | int | 酷胖价(韩元) | 167220 |
| discount_rate | float | 折扣率 | 0.23 |
| rocket_delivery | bool | 是否火箭配送 | true |
| monthly_clicks | int | 月点击量(酷铺) | 15234 |
| monthly_sales | int | 月成交量(酷铺) | 892 |
| 28day_sales | int | 28天销量 | 495 |
| daily_sales | float | 日均销量 | 17.7 |
| rating | float | 评分(1-5) | 5.0 |
| review_count | int | 评论数 | 1340 |
| listing_date | date | 上架时间 | 2024-03-15 |
| product_url | string | 商品链接 | https://... |
| category | string | 类目 | 가정용 구강세정기 |
| scraped_at | datetime | 抓取时间 | 2026-03-31 14:30:00 |

---

## 阶段2：Kimi分析输入要求

当QoderWork完成抓取后，发送给我的信息应包含：

```
1. CSV文件路径或内容
2. 抓取参数：
   - 关键词
   - 抓取页数
   - 抓取时间
   - 数据条数
3. 数据质量说明：
   - 是否有缺失字段
   - 酷铺数据是否完整加载
   - 是否有异常值
```

---

## 常见问题FAQ

### Q1: 酷铺插件数据没加载怎么办？
**A:** 增加等待时间到10-15秒，或检测特定元素出现再抓取。

### Q2: 抓取中断如何恢复？
**A:** 使用断点续传，记录最后抓取的页码和商品索引，从中断处继续。

### Q3: 如何验证数据准确性？
**A:** 随机抽取5-10个商品人工核对，检查价格、销量等关键字段。

### Q4: 被封IP了怎么办？
**A:** 停止抓取，更换网络环境（如手机热点），等待2-4小时后再试。

---

## 版本记录

- **v1.0** (2026-03-31): 初版，包含抓取规范、反爬虫机制、数据格式

