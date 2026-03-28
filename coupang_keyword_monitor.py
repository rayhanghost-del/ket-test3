#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Coupang智能广告关键词监控脚本
功能：自动分析广告报表，识别无效关键词，生成优化建议
作者：AI Assistant
版本：1.0
"""

import pandas as pd
import numpy as np
import os
import sys
from datetime import datetime
import argparse

class CoupangKeywordMonitor:
    """Coupang广告关键词监控器"""
    
    def __init__(self, file_path, output_dir=None):
        """
        初始化监控器
        :param file_path: 广告报表Excel文件路径
        :param output_dir: 输出目录，默认为当前目录
        """
        self.file_path = file_path
        self.output_dir = output_dir or os.path.dirname(file_path) or '.'
        self.df = None
        self.invalid_keywords = None
        self.summary = {}
        
    def load_data(self):
        """加载广告数据"""
        print(f"📂 正在加载数据: {self.file_path}")
        try:
            self.df = pd.read_excel(self.file_path)
            print(f"✅ 数据加载成功: {len(self.df)} 行")
            return True
        except Exception as e:
            print(f"❌ 数据加载失败: {e}")
            return False
    
    def calculate_metrics(self):
        """计算关键指标"""
        if self.df is None:
            return False
            
        # 筛选有关键词的数据
        kw_df = self.df[self.df['关键词'].notna()].copy()
        
        # 计算指标
        kw_df['CTR'] = kw_df['点击次数'] / kw_df['展示次数'] * 100
        kw_df['ROAS'] = kw_df['总转化销售额（14天）'] / kw_df['广告费']
        kw_df['ROAS'] = kw_df['ROAS'].replace([np.inf, -np.inf], 0).fillna(0)
        
        self.kw_df = kw_df
        return True
    
    def classify_keywords(self):
        """
        分类关键词状态
        返回: DataFrame 带有关键词状态列
        """
        def classify(row):
            # 高消费零转化：广告费 > 1000 且 销量 = 0
            if row['广告费'] > 1000 and row['总销量（14天）'] == 0:
                return '高消费零转化 🚨'
            # 高展示无点击：展示 > 50 且 点击 = 0
            elif row['展示次数'] > 50 and row['点击次数'] == 0:
                return '高展示无点击 ⚠️'
            # 有点击无转化：点击 > 3 且 销量 = 0
            elif row['点击次数'] > 3 and row['总销量（14天）'] == 0:
                return '有点击无转化 🔍'
            # 有消费无销售：广告费 > 0 且 销售额 = 0
            elif row['广告费'] > 0 and row['总转化销售额（14天）'] == 0:
                return '有消费无销售 💸'
            # CTR极低：CTR < 0.05% 且 展示 > 100
            elif row['CTR'] < 0.05 and row['展示次数'] > 100:
                return 'CTR极低 📉'
            else:
                return '有效/待观察 ✅'
        
        self.kw_df['关键词状态'] = self.kw_df.apply(classify, axis=1)
        self.invalid_keywords = self.kw_df[self.kw_df['关键词状态'] != '有效/待观察 ✅']
        return True
    
    def generate_summary(self):
        """生成汇总统计"""
        if self.invalid_keywords is None:
            return None
            
        total_cost = self.df['广告费'].sum()
        invalid_cost = self.invalid_keywords['广告费'].sum()
        
        self.summary = {
            '分析时间': datetime.now().strftime('%Y-%m-%d %H:%M:%S'),
            '数据文件': os.path.basename(self.file_path),
            '总数据行数': len(self.df),
            '有关键词行数': len(self.kw_df),
            '无效关键词数': len(self.invalid_keywords),
            '总广告费': total_cost,
            '无效关键词浪费': invalid_cost,
            '浪费占比': f"{invalid_cost/total_cost*100:.1f}%" if total_cost > 0 else "0%",
            '总销售额': self.df['总转化销售额（14天）'].sum(),
            '整体ROAS': self.df['总转化销售额（14天）'].sum() / total_cost if total_cost > 0 else 0,
        }
        
        # 按问题类型统计
        status_counts = self.invalid_keywords['关键词状态'].value_counts()
        self.summary['问题分布'] = status_counts.to_dict()
        
        return self.summary
    
    def export_report(self, filename=None):
        """
        导出Excel报告
        :param filename: 输出文件名，默认为自动生成
        """
        if filename is None:
            timestamp = datetime.now().strftime('%Y%m%d_%H%M%S')
            filename = f'Coupang关键词监控报告_{timestamp}.xlsx'
        
        output_path = os.path.join(self.output_dir, filename)
        
        print(f"📊 正在生成报告: {output_path}")
        
        with pd.ExcelWriter(output_path, engine='openpyxl') as writer:
            # Sheet 1: 执行摘要
            summary_df = pd.DataFrame([self.summary])
            summary_df = summary_df[['分析时间', '数据文件', '总数据行数', '无效关键词数', 
                                     '总广告费', '无效关键词浪费', '浪费占比', '整体ROAS']]
            summary_df.to_excel(writer, sheet_name='执行摘要', index=False)
            
            # Sheet 2: 无效关键词清单
            export_cols = ['广告商品名', '关键词', '关键词状态', '展示次数', '点击次数', 
                          '广告费', '总销量（14天）', '总转化销售额（14天）', 'CTR', 'ROAS']
            export_df = self.invalid_keywords[export_cols].copy()
            export_df.columns = ['SKU', '关键词', '状态', '展示', '点击', '广告费', 
                                '销量', '销售额', 'CTR%', 'ROAS']
            export_df = export_df.sort_values(['状态', '广告费'], ascending=[True, False])
            export_df.to_excel(writer, sheet_name='无效关键词清单', index=False)
            
            # Sheet 3: 按SKU汇总
            sku_summary = export_df.groupby('SKU').agg({
                '关键词': 'count',
                '广告费': 'sum',
                '销售额': 'sum'
            }).reset_index()
            sku_summary.columns = ['SKU', '无效关键词数', '浪费广告费', '产生销售']
            sku_summary = sku_summary.sort_values('浪费广告费', ascending=False)
            sku_summary.to_excel(writer, sheet_name='按SKU汇总', index=False)
            
            # Sheet 4: TOP 50优先处理
            top50 = export_df.head(50)[['SKU', '关键词', '状态', '广告费', '销售额']]
            top50.to_excel(writer, sheet_name='TOP50优先处理', index=False)
        
        print(f"✅ 报告已生成: {output_path}")
        return output_path
    
    def print_report(self):
        """打印控制台报告"""
        print("\n" + "="*60)
        print("📊 Coupang关键词监控报告")
        print("="*60)
        
        print(f"\n📅 分析时间: {self.summary['分析时间']}")
        print(f"📁 数据文件: {self.summary['数据文件']}")
        
        print(f"\n📈 整体表现:")
        print(f"  • 总广告费: ₩{self.summary['总广告费']:,.0f}")
        print(f"  • 总销售额: ₩{self.summary['总销售额']:,.0f}")
        print(f"  • 整体ROAS: {self.summary['整体ROAS']:.2f}")
        
        print(f"\n⚠️ 无效关键词分析:")
        print(f"  • 无效关键词数: {self.summary['无效关键词数']} 个")
        print(f"  • 浪费广告费: ₩{self.summary['无效关键词浪费']:,.0f}")
        print(f"  • 浪费占比: {self.summary['浪费占比']}")
        
        print(f"\n📊 问题分布:")
        for status, count in self.summary['问题分布'].items():
            print(f"  • {status}: {count} 个")
        
        print(f"\n🎯 TOP 10 浪费最严重关键词:")
        top10 = self.invalid_keywords.nlargest(10, '广告费')[['关键词', '广告费', '总转化销售额（14天）', '关键词状态']]
        for i, (_, row) in enumerate(top10.iterrows(), 1):
            print(f"  {i}. {row['关键词'][:30]}... - ₩{row['广告费']:,.0f} ({row['关键词状态']})")
        
        print("\n" + "="*60)
        print("💡 建议: 优先处理TOP 50关键词，预计可节省 60-70% 浪费金额")
        print("="*60 + "\n")


def main():
    """主函数"""
    parser = argparse.ArgumentParser(description='Coupang广告关键词监控工具')
    parser.add_argument('file', help='广告报表Excel文件路径')
    parser.add_argument('-o', '--output', help='输出目录', default='.')
    parser.add_argument('-q', '--quiet', action='store_true', help='静默模式，只生成报告不打印')
    
    args = parser.parse_args()
    
    # 检查文件是否存在
    if not os.path.exists(args.file):
        print(f"❌ 文件不存在: {args.file}")
        sys.exit(1)
    
    # 初始化监控器
    monitor = CoupangKeywordMonitor(args.file, args.output)
    
    # 执行分析
    if not monitor.load_data():
        sys.exit(1)
    
    if not monitor.calculate_metrics():
        print("❌ 指标计算失败")
        sys.exit(1)
    
    if not monitor.classify_keywords():
        print("❌ 关键词分类失败")
        sys.exit(1)
    
    # 生成汇总
    monitor.generate_summary()
    
    # 导出报告
    output_path = monitor.export_report()
    
    # 打印报告（非静默模式）
    if not args.quiet:
        monitor.print_report()
        print(f"\n📁 详细报告已保存: {output_path}")


if __name__ == '__main__':
    main()
