import matplotlib
import matplotlib.pyplot as plt
import matplotlib.font_manager as fm
import numpy as np
import pandas as pd
from matplotlib.patches import Rectangle

# 字体配置
font_path = '/usr/share/fonts/opentype/noto/NotoSansCJK-Regular.ttc'
font_prop = fm.FontProperties(fname=font_path, size=12)
font_prop_title = fm.FontProperties(fname=font_path, size=14, weight='bold')
font_prop_suptitle = fm.FontProperties(fname=font_path, size=20, weight='bold')
font_prop_small = fm.FontProperties(fname=font_path, size=10)
font_prop_tiny = fm.FontProperties(fname=font_path, size=9)
font_prop_large = fm.FontProperties(fname=font_path, size=16, weight='bold')

file_path = '/root/.openclaw/media/inbound/Coupang平台销售利润核算表---0eea6686-b106-4936-a92a-66acbebf9633.xlsx'
df = pd.read_excel(file_path, sheet_name='产品平台销售利润', header=2)

def clean_num(x):
    if pd.isna(x): return 0
    try: return float(x)
    except: return 0

num_cols = ['销售数量', '退款数量', '平台销售额(CNY)', '平台费用(CNY)', '平台净销售额(CNY)',
            '卖家优惠券（CNY）', '销售手续费（CNY）', '火箭仓操作费（CNY）', '配送费（CNY）',
            '仓储费（CNY）', '退货回收费（CNY）', '退货入库费（CNY）', '附加服务费（CNY）',
            '库存赔偿费（CNY）', '广告费（CNY）', 'Milkrun费用（CNY）', '月服务费（CNY）', '其他费用（CNY）',
            '销售额（KRW）', '退款销售额（KRW）', '销售额（CNY）', '退款销售额（CNY）']
for col in num_cols:
    if col in df.columns:
        df[col] = df[col].apply(clean_num)

targets = ['冰点服', '瑜伽垫', '露营椅', '吸尘器', '塔罗牌']
targets_label = ['风扇衣', '瑜伽垫', '露营椅', '吸尘器', '塔罗牌']

# 收集数据
summary = []
monthly_trend = {}

for cat, label in zip(targets, targets_label):
    subset = df[df['类别'] == cat]
    total_sales = subset['销售数量'].sum()
    total_refund = abs(subset['退款数量'].sum())
    total_sales_cny = subset['销售额（CNY）'].sum()
    total_refund_cny = abs(subset['退款销售额（CNY）'].sum())
    platform_sales_cny = subset['平台销售额(CNY)'].sum()
    platform_cost_cny = abs(subset['平台费用(CNY)'].sum())
    platform_net_cny = subset['平台净销售额(CNY)'].sum()
    
    real_sales = total_sales_cny - total_refund_cny
    gross_margin = platform_net_cny / platform_sales_cny * 100 if platform_sales_cny > 0 else 0
    real_gross_margin = platform_net_cny / real_sales * 100 if real_sales > 0 else 0
    cost_rate = platform_cost_cny / platform_sales_cny * 100 if platform_sales_cny > 0 else 0
    refund_rate = total_refund / total_sales * 100 if total_sales > 0 else 0
    refund_amount_rate = total_refund_cny / total_sales_cny * 100 if total_sales_cny > 0 else 0
    
    # 费用明细
    fee_breakdown = {
        '销售手续费': abs(subset['销售手续费（CNY）'].sum()),
        '广告费': abs(subset['广告费（CNY）'].sum()),
        '配送费': abs(subset['配送费（CNY）'].sum()),
        '火箭仓操作费': abs(subset['火箭仓操作费（CNY）'].sum()),
        '卖家优惠券': abs(subset['卖家优惠券（CNY）'].sum()),
        '退货相关': abs(subset['退货回收费（CNY）'].sum() + subset['退货入库费（CNY）'].sum()),
        '其他': abs(subset['库存赔偿费（CNY）'].sum() + subset['Milkrun费用（CNY）'].sum() + 
                    subset['附加服务费（CNY）'].sum() + subset['仓储费（CNY）'].sum() + 
                    subset['月服务费（CNY）'].sum() + subset['其他费用（CNY）'].sum()),
    }
    
    summary.append({
        'category': label,
        'sales_qty': total_sales,
        'refund_qty': total_refund,
        'refund_rate': refund_rate,
        'refund_amount_rate': refund_amount_rate,
        'sales_cny': total_sales_cny,
        'refund_cny': total_refund_cny,
        'real_sales': real_sales,
        'platform_sales': platform_sales_cny,
        'cost_cny': platform_cost_cny,
        'net_cny': platform_net_cny,
        'gross_margin': gross_margin,
        'real_gross_margin': real_gross_margin,
        'cost_rate': cost_rate,
        'fee_breakdown': fee_breakdown
    })
    
    # 月度数据
    monthly = subset.groupby('月份').agg({
        '销售数量': 'sum',
        '退款数量': 'sum',
        '平台销售额(CNY)': 'sum',
        '平台净销售额(CNY)': 'sum'
    }).reset_index().sort_values('月份')
    monthly_trend[label] = monthly

summary_df = pd.DataFrame(summary)

# 创建大图
fig = plt.figure(figsize=(24, 32))
fig.suptitle('Coupang 五大主力品 深度利润分析', fontproperties=font_prop_suptitle, y=0.98)

colors = ['#FF6B6B', '#4ECDC4', '#45B7D1', '#96CEB4', '#FFEAA7']
color_map = dict(zip(targets_label, colors))

# 1. 各品类核心指标对比（横向柱状图）
ax1 = plt.subplot(4, 2, 1)
x = np.arange(len(summary_df))
width = 0.2
bars1 = ax1.bar(x - 1.5*width, summary_df['sales_cny']/1000, width, label='原始销售额', color='#3498db', alpha=0.85)
bars2 = ax1.bar(x - 0.5*width, summary_df['real_sales']/1000, width, label='真实销售额(扣退货)', color='#2ecc71', alpha=0.85)
bars3 = ax1.bar(x + 0.5*width, summary_df['cost_cny']/1000, width, label='平台费用', color='#e74c3c', alpha=0.85)
bars4 = ax1.bar(x + 1.5*width, summary_df['net_cny']/1000, width, label='净销售额', color='#9b59b6', alpha=0.85)
ax1.set_xlabel('品类', fontproperties=font_prop)
ax1.set_ylabel('金额 (千元CNY)', fontproperties=font_prop)
ax1.set_title('① 各品类销售额/费用/利润对比', fontproperties=font_prop_title)
ax1.set_xticks(x)
ax1.set_xticklabels(summary_df['category'], fontproperties=font_prop)
ax1.legend(prop=font_prop_small, loc='upper left')
ax1.grid(axis='y', alpha=0.3)
for bar in bars4:
    height = bar.get_height()
    ax1.annotate(f'{height:.0f}K', xy=(bar.get_x() + bar.get_width() / 2, height),
                xytext=(0, 3), textcoords="offset points", ha='center', va='bottom', 
                fontproperties=font_prop_tiny, fontweight='bold')

# 2. 毛利率 vs 退货率对比
ax2 = plt.subplot(4, 2, 2)
x = np.arange(len(summary_df))
width = 0.35
bars1 = ax2.bar(x - width/2, summary_df['gross_margin'], width, label='毛利率', color='#2ecc71', alpha=0.85)
line1 = ax2.plot(x, summary_df['refund_rate'], 'o-', color='#e74c3c', linewidth=3, markersize=10, label='退货率', zorder=5)
ax2_twin = ax2.twinx()
ax2_twin.set_ylabel('退货率 (%)', color='#e74c3c', fontproperties=font_prop)
ax2_twin.tick_params(axis='y', labelcolor='#e74c3c')
ax2_twin.set_ylim(0, 25)
ax2.set_ylabel('毛利率 (%)', fontproperties=font_prop)
ax2.set_title('② 毛利率 vs 退货率', fontproperties=font_prop_title)
ax2.set_xticks(x)
ax2.set_xticklabels(summary_df['category'], fontproperties=font_prop)
ax2.legend(prop=font_prop_small, loc='upper left')
ax2_twin.legend(prop=font_prop_small, loc='upper right')
ax2.grid(axis='y', alpha=0.3)
ax2.set_ylim(0, 100)
for bar in bars1:
    height = bar.get_height()
    ax2.annotate(f'{height:.1f}%', xy=(bar.get_x() + bar.get_width() / 2, height),
                xytext=(0, 3), textcoords="offset points", ha='center', va='bottom', 
                fontproperties=font_prop_tiny, fontweight='bold', color='green')
for i, (xi, yi) in enumerate(zip(x, summary_df['refund_rate'])):
    ax2_twin.annotate(f'{yi:.1f}%', xy=(xi, yi), xytext=(0, 8), textcoords="offset points", 
                     ha='center', va='bottom', fontproperties=font_prop_tiny, fontweight='bold', color='red')

# 3. 费用结构堆叠柱状图
ax3 = plt.subplot(4, 2, 3)
categories = summary_df['category'].tolist()
fee_types = ['销售手续费', '广告费', '配送费', '火箭仓操作费', '卖家优惠券', '退货相关', '其他']
fee_colors = ['#e74c3c', '#3498db', '#f39c12', '#9b59b6', '#1abc9c', '#e67e22', '#95a5a6']
bottom = np.zeros(len(categories))
for fee_type, color in zip(fee_types, fee_colors):
    values = [s['fee_breakdown'].get(fee_type, 0)/1000 for s in summary]
    ax3.bar(categories, values, bottom=bottom, label=fee_type, color=color, alpha=0.85)
    bottom += values
ax3.set_ylabel('费用 (千元CNY)', fontproperties=font_prop)
ax3.set_title('③ 各品类费用结构分解', fontproperties=font_prop_title)
ax3.set_xticklabels(categories, fontproperties=font_prop)
ax3.legend(prop=font_prop_tiny, loc='upper right', ncol=2)
ax3.grid(axis='y', alpha=0.3)

# 4. 退货数量 vs 销售数量对比
ax4 = plt.subplot(4, 2, 4)
x = np.arange(len(summary_df))
width = 0.35
bars1 = ax4.bar(x - width/2, summary_df['sales_qty'], width, label='销售数量', color='#3498db', alpha=0.85)
bars2 = ax4.bar(x + width/2, summary_df['refund_qty'], width, label='退款数量', color='#e74c3c', alpha=0.85)
ax4.set_ylabel('数量 (件)', fontproperties=font_prop)
ax4.set_title('④ 销售 vs 退款数量', fontproperties=font_prop_title)
ax4.set_xticks(x)
ax4.set_xticklabels(summary_df['category'], fontproperties=font_prop)
ax4.legend(prop=font_prop_small)
ax4.grid(axis='y', alpha=0.3)
for i, (bar1, bar2) in enumerate(zip(bars1, bars2)):
    h1, h2 = bar1.get_height(), bar2.get_height()
    ax4.annotate(f'{h1:.0f}', xy=(bar1.get_x() + bar1.get_width()/2, h1), xytext=(0, 3), 
                textcoords="offset points", ha='center', va='bottom', fontproperties=font_prop_tiny, color='blue')
    ax4.annotate(f'{h2:.0f}', xy=(bar2.get_x() + bar2.get_width()/2, h2), xytext=(0, 3), 
                textcoords="offset points", ha='center', va='bottom', fontproperties=font_prop_tiny, color='red')

# 5. 瑜伽垫月度趋势
ax5 = plt.subplot(4, 2, 5)
yoga_monthly = monthly_trend['瑜伽垫']
if len(yoga_monthly) > 0:
    x_labels = [str(m)[:7] if not pd.isna(m) else '' for m in yoga_monthly['月份']]
    x_pos = np.arange(len(x_labels))
    ax5.bar(x_pos - 0.2, yoga_monthly['销售数量'], 0.4, label='销售数量', color='#3498db', alpha=0.85)
    ax5.bar(x_pos + 0.2, abs(yoga_monthly['退款数量']), 0.4, label='退款数量', color='#e74c3c', alpha=0.85)
    ax5_twin = ax5.twinx()
    refund_rates = [abs(r)/s*100 if s > 0 else 0 for s, r in zip(yoga_monthly['销售数量'], yoga_monthly['退款数量'])]
    ax5_twin.plot(x_pos, refund_rates, 'o-', color='#e74c3c', linewidth=3, markersize=8, label='退货率')
    ax5_twin.set_ylabel('退货率 (%)', color='#e74c3c', fontproperties=font_prop)
    ax5_twin.tick_params(axis='y', labelcolor='#e74c3c')
    ax5_twin.set_ylim(0, 25)
    ax5.set_xticks(x_pos)
    ax5.set_xticklabels(x_labels, fontproperties=font_prop_tiny)
    ax5.set_ylabel('数量 (件)', fontproperties=font_prop)
    ax5.set_title('⑤ 瑜伽垫 月度销售/退货趋势', fontproperties=font_prop_title)
    ax5.legend(prop=font_prop_small, loc='upper left')
    ax5_twin.legend(prop=font_prop_small, loc='upper right')
    ax5.grid(axis='y', alpha=0.3)

# 6. 塔罗牌月度趋势
ax6 = plt.subplot(4, 2, 6)
tarot_monthly = monthly_trend['塔罗牌']
if len(tarot_monthly) > 0:
    x_labels = [str(m)[:7] if not pd.isna(m) else '' for m in tarot_monthly['月份']]
    x_pos = np.arange(len(x_labels))
    ax6.bar(x_pos - 0.2, tarot_monthly['销售数量'], 0.4, label='销售数量', color='#3498db', alpha=0.85)
    ax6.bar(x_pos + 0.2, abs(tarot_monthly['退款数量']), 0.4, label='退款数量', color='#e74c3c', alpha=0.85)
    ax6_twin = ax6.twinx()
    refund_rates = [abs(r)/s*100 if s > 0 else 0 for s, r in zip(tarot_monthly['销售数量'], tarot_monthly['退款数量'])]
    ax6_twin.plot(x_pos, refund_rates, 'o-', color='#e74c3c', linewidth=3, markersize=8, label='退货率')
    ax6_twin.set_ylabel('退货率 (%)', color='#e74c3c', fontproperties=font_prop)
    ax6_twin.tick_params(axis='y', labelcolor='#e74c3c')
    ax6_twin.set_ylim(0, 25)
    ax6.set_xticks(x_pos)
    ax6.set_xticklabels(x_labels, fontproperties=font_prop_tiny)
    ax6.set_ylabel('数量 (件)', fontproperties=font_prop)
    ax6.set_title('⑥ 塔罗牌 月度销售/退货趋势', fontproperties=font_prop_title)
    ax6.legend(prop=font_prop_small, loc='upper left')
    ax6_twin.legend(prop=font_prop_small, loc='upper right')
    ax6.grid(axis='y', alpha=0.3)

# 7. 各品类真实毛利率对比（扣除退货后）
ax7 = plt.subplot(4, 2, 7)
bars = ax7.bar(summary_df['category'], summary_df['real_gross_margin'], color=colors, alpha=0.85, edgecolor='black', linewidth=1.5)
ax7.set_ylabel('真实毛利率 (%)', fontproperties=font_prop)
ax7.set_title('⑦ 真实毛利率（扣除退货后）', fontproperties=font_prop_title)
ax7.set_ylim(0, 100)
ax7.grid(axis='y', alpha=0.3)
ax7.set_xticklabels(summary_df['category'], fontproperties=font_prop)
for bar in bars:
    height = bar.get_height()
    ax7.annotate(f'{height:.1f}%', xy=(bar.get_x() + bar.get_width()/2, height), xytext=(0, 3),
                textcoords="offset points", ha='center', va='bottom', fontproperties=font_prop, fontweight='bold')

# 8. 各品类费用率对比
ax8 = plt.subplot(4, 2, 8)
bars = ax8.bar(summary_df['category'], summary_df['cost_rate'], color=colors, alpha=0.85, edgecolor='black', linewidth=1.5)
ax8.set_ylabel('费用率 (%)', fontproperties=font_prop)
ax8.set_title('⑧ 平台费用率对比', fontproperties=font_prop_title)
ax8.set_ylim(0, 50)
ax8.grid(axis='y', alpha=0.3)
ax8.set_xticklabels(summary_df['category'], fontproperties=font_prop)
for bar in bars:
    height = bar.get_height()
    ax8.annotate(f'{height:.1f}%', xy=(bar.get_x() + bar.get_width()/2, height), xytext=(0, 3),
                textcoords="offset points", ha='center', va='bottom', fontproperties=font_prop, fontweight='bold')

plt.tight_layout(rect=[0, 0, 1, 0.97])
plt.savefig('/root/.openclaw/workspace/coupang_profit_analysis.png', dpi=150, bbox_inches='tight', 
            facecolor='white', edgecolor='none')
plt.close()
print('深度分析图表已保存')
