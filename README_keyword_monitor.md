# Coupang关键词监控脚本使用说明

## 📋 功能介绍

这个脚本可以自动分析Coupang广告报表，识别无效关键词，生成优化建议报告。

### 主要功能
- ✅ 自动读取广告报表Excel文件
- ✅ 智能识别5类无效关键词
- ✅ 生成Excel报告（4个工作表）
- ✅ 支持命令行参数
- ✅ 可配置定时自动运行

---

## 🚀 快速开始

### 1. 基本使用

```bash
# 分析单个报表
python3 coupang_keyword_monitor.py /path/to/广告报表.xlsx

# 指定输出目录
python3 coupang_keyword_monitor.py /path/to/广告报表.xlsx -o /path/to/output

# 静默模式（只生成报告，不打印到控制台）
python3 coupang_keyword_monitor.py /path/to/广告报表.xlsx -q
```

### 2. 输出文件

脚本会生成一个Excel文件，包含4个工作表：

| 工作表 | 内容 |
|--------|------|
| 执行摘要 | 核心指标汇总 |
| 无效关键词清单 | 所有无效关键词详细数据 |
| 按SKU汇总 | 各SKU的无效关键词统计 |
| TOP50优先处理 | 浪费最严重的50个关键词 |

---

## 📊 无效关键词分类标准

脚本会自动识别以下5类无效关键词：

| 类型 | 判断标准 | 处理建议 |
|------|----------|----------|
| 🚨 高消费零转化 | 广告费 > ₩1,000 且 销量 = 0 | 立即停用 |
| ⚠️ 高展示无点击 | 展示 > 50 且 点击 = 0 | 降低出价或停用 |
| 🔍 有点击无转化 | 点击 > 3 且 销量 = 0 | 检查落地页或停用 |
| 💸 有消费无销售 | 广告费 > 0 且 销售额 = 0 | 观察1周后停用 |
| 📉 CTR极低 | CTR < 0.05% 且 展示 > 100 | 优化素材或停用 |

---

## ⏰ 定时自动运行

### 方法1：使用Cron定时任务（推荐）

```bash
# 编辑crontab
crontab -e

# 添加每周一早上9点运行
0 9 * * 1 /usr/bin/python3 /root/.openclaw/workspace/coupang_keyword_monitor.py /path/to/最新报表.xlsx -o /root/.openclaw/workspace/reports

# 或者每周运行两次（周一和周四）
0 9 * * 1,4 /usr/bin/python3 /root/.openclaw/workspace/coupang_keyword_monitor.py /path/to/最新报表.xlsx -o /root/.openclaw/workspace/reports
```

### 方法2：使用Shell脚本

```bash
# 给脚本添加执行权限
chmod +x /root/.openclaw/workspace/run_keyword_monitor.sh

# 编辑脚本，配置报表路径
vim /root/.openclaw/workspace/run_keyword_monitor.sh

# 运行脚本
./run_keyword_monitor.sh
```

---

## 🔧 高级用法

### 自定义分析逻辑

如果需要修改判断标准，编辑脚本中的 `classify` 函数：

```python
def classify(row):
    # 修改这里的阈值
    if row['广告费'] > 2000:  # 改为2000
        return '高消费零转化 🚨'
    # ...
```

### 集成到飞书通知

在脚本中添加飞书webhook调用：

```python
import requests

def send_feishu_notification(webhook_url, report_path):
    """发送飞书通知"""
    data = {
        "msg_type": "text",
        "content": {
            "text": f"Coupang关键词监控报告已生成\n文件: {report_path}"
        }
    }
    requests.post(webhook_url, json=data)
```

---

## 📁 文件说明

```
/root/.openclaw/workspace/
├── coupang_keyword_monitor.py    # 主监控脚本
├── run_keyword_monitor.sh        # 自动化Shell脚本
├── README_keyword_monitor.md     # 本说明文档
└── reports/                       # 报告输出目录
    └── Coupang关键词监控报告_20260325_143022.xlsx
```

---

## ❓ 常见问题

### Q1: 报表格式不兼容怎么办？

确保报表包含以下列：
- `关键词` - 搜索关键词
- `广告费` - 花费金额
- `展示次数` - 曝光量
- `点击次数` - 点击量
- `总销量（14天）` - 14天销量
- `总转化销售额（14天）` - 14天销售额
- `广告商品名` - 商品名称

### Q2: 如何修改输出格式？

编辑 `export_report` 方法，自定义Excel输出：

```python
# 添加新的工作表
new_df.to_excel(writer, sheet_name='自定义分析', index=False)
```

### Q3: 可以分析多个文件吗？

可以批量处理：

```bash
for file in /path/to/reports/*.xlsx; do
    python3 coupang_keyword_monitor.py "$file" -o /path/to/output
done
```

---

## 📝 更新日志

### v1.0 (2026-03-25)
- 初始版本发布
- 支持5类无效关键词识别
- 生成4工作表Excel报告
- 支持命令行参数

---

## 💡 使用建议

1. **每周运行一次**：建议固定每周一早上运行，及时发现问题
2. **优先处理TOP50**：不必一次处理所有无效词，先处理TOP50
3. **观察后再停用**："有消费无销售"的词建议观察1-2周再决定
4. **记录优化效果**：对比优化前后的ROAS变化，持续改进

---

## 🔗 相关资源

- Coupang Wing后台: https://wing.coupang.com
- 飞书 webhook 文档: https://open.feishu.cn/document/ukTMukTMukTM/ucTM5YjL3ETO24yNxkjN

---

如有问题，请检查：
1. Python版本 >= 3.6
2. 已安装 pandas, openpyxl: `pip3 install pandas openpyxl`
3. Excel文件格式正确
