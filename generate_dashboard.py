import matplotlib
import matplotlib.pyplot as plt
import matplotlib.font_manager as fm
import numpy as np
import pandas as pd

# 使用 font_properties 直接指定字体
font_path = '/usr/share/fonts/opentype/noto/NotoSansCJK-Regular.ttc'
font_prop = fm.FontProperties(fname=font_path, size=12)
font_prop_title = fm.FontProperties(fname=font_path, size=14, weight='bold')
font_prop_suptitle = fm.FontProperties(fname=font_path, size=22, weight='bold')
font_prop_small = fm.FontProperties(fname=font_path, size=10)
font_prop_tiny = fm.FontProperties(fname=font_path, size=9)

file_path = '/root/.openclaw/media/inbound/Coupang平台销售利润核算表---0eea6686-b106-4936-a92a-66acbebf9633.xlsx'
df = pd.read_excel(file_path, sheet_name='产品平台销售利润', header=2)

def clean_num(x):
    if pd.isna(x): return 0
    try:
        return float(x)
    except:
        return 0

num_cols = ['销售数量', '退款数量', '平台销售额(CNY)', '平台费用(CNY)', '平台净销售额(CNY)',
            '卖家优惠券（CNY）', '销售手续费（CNY）', '火箭仓操作费（CNY）', '配送费（CNY）',
            '仓储费（CNY）', '退货回收费（CNY）', '退货入库费（CNY）', '附加服务费（CNY）',
            '库存赔偿费（CNY）', '广告费（CNY）', 'Milkrun费用（CNY）', '月服务费（CNY）', '其他费用（CNY）']
for col in num_cols:
    if col in df.columns:
        df[col] = df[col].apply(clean_num)

targets = ['冰点服', '瑜伽垫', '露营椅', '吸尘器', '塔罗牌']
targets_label = ['风扇衣', '瑜伽垫', '露营椅', '吸尘器', '塔罗牌']

summary = []
for cat, label in zip(targets, targets_label):
    subset = df[df['类别'] == cat]
    total_sales = subset['销售数量'].sum()
    total_refund = abs(subset['退款数量'].sum())
    total_sales_cny = subset['平台销售额(CNY)'].sum()
    total_cost_cny = subset['平台费用(CNY)'].sum()
    total_net_cny = subset['平台净销售额(CNY)'].sum()
    refund_rate = total_refund / total_sales * 100 if total_sales > 0 else 0
    net_rate = total_net_cny / total_sales_cny * 100 if total_sales_cny > 0 else 0
    cost_rate = abs(total_cost_cny) / total_sales_cny * 100 if total_sales_cny > 0 else 0
    summary.append({
        'category': label,
        'sales': total_sales,
        'refund': total_refund,
        'refund_rate': refund_rate,
        'sales_cny': total_sales_cny,
        'cost_cny': abs(total_cost_cny),
        'net_cny': total_net_cny,
        'net_rate': net_rate,
        'cost_rate': cost_rate
    })

summary_df = pd.DataFrame(summary)

fig = plt.figure(figsize=(20, 24))
fig.suptitle('Coupang 五大主力品 利润分析看板', fontproperties=font_prop_suptitle, y=0.98)

colors = ['#FF6B6B', '#4ECDC4', '#45B7D1', '#96CEB4', '#FFEAA7']

# 1. 销售额 vs 费用 vs 净利润
ax1 = plt.subplot(3, 2, 1)
x = np.arange(len(summary_df))
width = 0.25
bars1 = ax1.bar(x - width, summary_df['sales_cny'], width, label='平台销售额', color='#3498db', alpha=0.85)
bars2 = ax1.bar(x, summary_df['cost_cny'], width, label='平台费用', color='#e74c3c', alpha=0.85)
bars3 = ax1.bar(x + width, summary_df['net_cny'], width, label='净销售额', color='#2ecc71', alpha=0.85)
ax1.set_xlabel('品类', fontproperties=font_prop)
ax1.set_ylabel('金额 (CNY)', fontproperties=font_prop)
ax1.set_title('① 销售额 / 费用 / 净利润 对比', fontproperties=font_prop_title)
ax1.set_xticks(x)
ax1.set_xticklabels(summary_df['category'], fontproperties=font_prop)
ax1.legend(prop=font_prop_small)
ax1.grid(axis='y', alpha=0.3)
for bar in bars3:
    height = bar.get_height()
    ax1.annotate(f'¥{height:,.0f}',
                xy=(bar.get_x() + bar.get_width() / 2, height),
                xytext=(0, 3), textcoords="offset points",
                ha='center', va='bottom', fontproperties=font_prop_tiny, fontweight='bold')

# 2. 退货率对比
ax2 = plt.subplot(3, 2, 2)
bars = ax2.bar(summary_df['category'], summary_df['refund_rate'], color=colors, alpha=0.85, edgecolor='black', linewidth=1.5)
ax2.set_ylabel('退货率 (%)', fontproperties=font_prop)
ax2.set_title('② 退货率（按数量）对比', fontproperties=font_prop_title)
ax2.set_ylim(0, 22)
ax2.grid(axis='y', alpha=0.3)
ax2.set_xticklabels(summary_df['category'], fontproperties=font_prop)
for bar in bars:
    height = bar.get_height()
    ax2.annotate(f'{height:.1f}%',
                xy=(bar.get_x() + bar.get_width() / 2, height),
                xytext=(0, 3), textcoords="offset points",
                ha='center', va='bottom', fontproperties=font_prop, fontweight='bold')
ax2.axhline(y=15, color='red', linestyle='--', linewidth=2, alpha=0.7, label='15% 警戒线')
ax2.legend(prop=font_prop_small)

# 3. 瑜伽垫费用结构
ax3 = plt.subplot(3, 2, 3)
yoga = df[df['类别'] == '瑜伽垫']
yoga_costs = {
    '销售手续费': abs(yoga['销售手续费（CNY）'].sum()),
    '广告费': abs(yoga['广告费（CNY）'].sum()),
    '配送费': abs(yoga['配送费（CNY）'].sum()),
    '火箭仓操作费': abs(yoga['火箭仓操作费（CNY）'].sum()),
    '卖家优惠券': abs(yoga['卖家优惠券（CNY）'].sum()),
    '其他费用': abs(yoga['库存赔偿费（CNY）'].sum() + yoga['Milkrun费用（CNY）'].sum() + 
                 yoga['退货回收费（CNY）'].sum() + yoga['退货入库费（CNY）'].sum() + 
                 yoga['附加服务费（CNY）'].sum() + yoga['仓储费（CNY）'].sum()),
}
yoga_costs = {k: v for k, v in yoga_costs.items() if v > 0}
wedges, texts, autotexts = ax3.pie(yoga_costs.values(), 
                                    labels=yoga_costs.keys(), 
                                    autopct='%1.1f%%',
                                    colors=['#e74c3c', '#3498db', '#f39c12', '#9b59b6', '#1abc9c', '#95a5a6'],
                                    startangle=90, 
                                    textprops={'fontproperties': font_prop_small})
ax3.set_title('③ 瑜伽垫 费用结构占比', fontproperties=font_prop_title)

# 4. 塔罗牌费用结构
ax4 = plt.subplot(3, 2, 4)
tarot = df[df['类别'] == '塔罗牌']
tarot_costs = {
    '销售手续费': abs(tarot['销售手续费（CNY）'].sum()),
    '广告费': abs(tarot['广告费（CNY）'].sum()),
    '配送费': abs(tarot['配送费（CNY）'].sum()),
    '火箭仓操作费': abs(tarot['火箭仓操作费（CNY）'].sum()),
    '卖家优惠券': abs(tarot['卖家优惠券（CNY）'].sum()),
    '其他费用': abs(tarot['库存赔偿费（CNY）'].sum() + tarot['Milkrun费用（CNY）'].sum() + 
                  tarot['退货回收费（CNY）'].sum() + tarot['退货入库费（CNY）'].sum() + 
                  tarot['附加服务费（CNY）'].sum() + tarot['仓储费（CNY）'].sum()),
}
tarot_costs = {k: v for k, v in tarot_costs.items() if v > 0}
wedges, texts, autotexts = ax4.pie(tarot_costs.values(), 
                                    labels=tarot_costs.keys(), 
                                    autopct='%1.1f%%',
                                    colors=['#e74c3c', '#3498db', '#f39c12', '#9b59b6', '#1abc9c', '#95a5a6'],
                                    startangle=90, 
                                    textprops={'fontproperties': font_prop_small})
ax4.set_title('④ 塔罗牌 费用结构占比', fontproperties=font_prop_title)

# 5. 净利率 vs 费用率
ax5 = plt.subplot(3, 2, 5)
x = np.arange(len(summary_df))
width = 0.35
bars1 = ax5.bar(x - width/2, summary_df['net_rate'], width, label='净利率', color='#2ecc71', alpha=0.85)
bars2 = ax5.bar(x + width/2, summary_df['cost_rate'], width, label='费用率', color='#e74c3c', alpha=0.85)
ax5.set_ylabel('比率 (%)', fontproperties=font_prop)
ax5.set_title('⑤ 净利率 vs 费用率 对比', fontproperties=font_prop_title)
ax5.set_xticks(x)
ax5.set_xticklabels(summary_df['category'], fontproperties=font_prop)
ax5.legend(prop=font_prop_small)
ax5.grid(axis='y', alpha=0.3)
for bar in bars1:
    height = bar.get_height()
    ax5.annotate(f'{height:.1f}%',
                xy=(bar.get_x() + bar.get_width() / 2, height),
                xytext=(0, 3), textcoords="offset points",
                ha='center', va='bottom', fontproperties=font_prop_tiny, fontweight='bold', color='green')

# 6. 销售数量 vs 退款数量
ax6 = plt.subplot(3, 2, 6)
x = np.arange(len(summary_df))
width = 0.35
bars1 = ax6.bar(x - width/2, summary_df['sales'], width, label='销售数量', color='#3498db', alpha=0.85)
bars2 = ax6.bar(x + width/2, summary_df['refund'], width, label='退款数量', color='#e74c3c', alpha=0.85)
ax6.set_ylabel('数量 (件)', fontproperties=font_prop)
ax6.set_title('⑥ 销售数量 vs 退款数量', fontproperties=font_prop_title)
ax6.set_xticks(x)
ax6.set_xticklabels(summary_df['category'], fontproperties=font_prop)
ax6.legend(prop=font_prop_small)
ax6.grid(axis='y', alpha=0.3)
for bar in bars2:
    height = bar.get_height()
    ax6.annotate(f'{height:.0f}',
                xy=(bar.get_x() + bar.get_width() / 2, height),
                xytext=(0, 3), textcoords="offset points",
                ha='center', va='bottom', fontproperties=font_prop_tiny, fontweight='bold', color='red')

plt.tight_layout(rect=[0, 0, 1, 0.96])
plt.savefig('/root/.openclaw/workspace/coupang_dashboard.png', dpi=150, bbox_inches='tight', 
            facecolor='white', edgecolor='none')
plt.close()
print('图表已保存')
