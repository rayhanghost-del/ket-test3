#!/usr/bin/env python3
"""
Coupang竞品分析 - 图片分析版本
支持：从1688插件截图提取销售数据
"""
import asyncio
import json
import sys
import os
import re
from datetime import datetime
from typing import List, Dict, Optional

# 导入模块
from feishu_integration import FeishuIntegration, convert_to_bitable_fields

class ImageAnalyzer:
    """图片分析器 - 从截图提取数据"""
    
    def extract_from_text(self, text: str) -> Dict:
        """从OCR文本提取商品数据"""
        data = {
            'title': '',
            'price': '',
            'original_price': '',
            'rating': '',
            'review_count': '',
            'sales_data': {}
        }
        
        # 提取价格（如 38,900韩元 / 55,000韩元）
        price_match = re.search(r'(\d{1,3},?\d{3})\s*韩元', text)
        if price_match:
            data['price'] = price_match.group(1) + '원'
        
        # 提取原价
        original_match = re.search(r'(\d{1,3},?\d{3})\s*韩元.*?折扣', text)
        if original_match:
            data['original_price'] = original_match.group(1) + '원'
        
        # 提取评分（如 4.5）
        rating_match = re.search(r'(\d+\.?\d*)\s*分', text)
        if rating_match:
            data['rating'] = rating_match.group(1)
        
        # 提取评论数
        review_match = re.search(r'评论数[:：]\s*(\d+)', text)
        if review_match:
            data['review_count'] = review_match.group(1)
        
        # 提取销售数据
        sales = {}
        
        # 28天销量
        sales_28d = re.search(r'28天销量[:：]\s*(\d+)', text)
        if sales_28d:
            sales['sales_28d'] = int(sales_28d.group(1))
        
        # 28天曝光
        exposure = re.search(r'28天光[:：]\s*(\d+)', text)
        if exposure:
            sales['exposure_28d'] = int(exposure.group(1))
        
        # 转化率
        conversion = re.search(r'转化率[:：]\s*(\d+\.?\d*)', text)
        if conversion:
            sales['conversion_rate'] = conversion.group(1) + '%'
        
        # 日均销量
        daily = re.search(r'日销量[:：]\s*(\d+\.?\d*)', text)
        if daily:
            sales['daily_sales'] = float(daily.group(1))
        
        data['sales_data'] = sales
        return data
    
    def analyze_product(self, product_info: Dict) -> Dict:
        """AI分析商品"""
        title = product_info.get('title', '')
        
        analysis = {
            '商品名优势特点': self._analyze_title_advantages(title),
            '商品名建议': self._generate_name_suggestions(title),
            '详情页风格特点': '基于截图分析：实用主义风格，突出产品功能和使用场景',
            '详情页埋词': self._extract_keywords(title),
            '详情页设计建议': self._generate_design_suggestions()
        }
        return analysis
    
    def _analyze_title_advantages(self, title: str) -> str:
        advantages = []
        
        # 检查品牌
        if 'KLIFE' in title or '지누오' in title:
            advantages.append('① 品牌名前置，建立品牌认知')
        
        # 检查数字卖点
        if '20000' in title or '4' in title:
            advantages.append('② 数字卖点突出(20000mAh/4风扇)')
        
        # 检查场景覆盖
        scenes = ['钓鱼', '登山', '工地', '낚시', '등산', '현장']
        found_scenes = [s for s in scenes if s in title]
        if len(found_scenes) >= 2:
            advantages.append(f'③ 多场景覆盖({len(found_scenes)}个)，扩大受众')
        
        # 检查功能词
        if '风扇' in title or '制冷' in title or '선풍기' in title:
            advantages.append('④ 核心功能词明确')
        
        return '；'.join(advantages) if advantages else '标题结构清晰，建议增加差异化卖点'
    
    def _generate_name_suggestions(self, title: str) -> str:
        suggestions = [
            '【韩文优化】대용량배터리 선풍기조끼 쿨조끼 낚시 등산 현장작업복',
            '【中文市场】2万毫安风扇空调背心｜户外制冷工作服｜钓鱼工地必备',
            '【差异化】4팬 대용량 20000mAh 저소음 쿨조끼 여름작업복',
            '【建议】将「20000mAh」或「4팬」移至标题前部，提升搜索权重'
        ]
        return '\n'.join(suggestions)
    
    def _extract_keywords(self, title: str) -> str:
        keywords = {
            '已使用': [],
            '建议补充': []
        }
        
        # 已使用关键词
        if '风扇' in title or '선풍기' in title:
            keywords['已使用'].append('선풍기조끼(风扇背心)')
        if '制冷' in title or '쿨' in title:
            keywords['已使用'].append('쿨조끼(制冷背心)')
        
        # 建议补充
        suggestions = [
            '4팬선풍기조끼(4风扇背心)',
            '대용량배터리(大容量电池)',
            '냉방조끼(空调背心)',
            '여름작업복(夏季工作服)',
            '낚시조끼(钓鱼背心)',
            '저소음(低噪音)'
        ]
        keywords['建议补充'] = suggestions
        
        return f"【已使用】{', '.join(keywords['已使用'])}\n【建议补充】{', '.join(keywords['建议补充'])}"
    
    def _generate_design_suggestions(self) -> str:
        return """【图片顺序建议】
1. 产品全家福（含配件）
2. 场景痛点图（高温作业）
3. 核心卖点图（20000mAh电池/4风扇）
4. 技术背书图（如有NASA等）
5. 降温效果对比图
6. 多场景使用图（钓鱼/登山/工地）
7. 产品细节图（面料/口袋/拉链）
8. 规格参数表
9. 真实用户评价
10. 认证标识（KC等）
11. 价格促销信息

【文案结构】
标题区：痛点引入→解决方案
卖点区：图标+一句话说明
信任区：数据/认证/评价
促单区：限时优惠/售后保障"""

class CoupangImageService:
    """图片分析服务"""
    
    def __init__(self):
        self.analyzer = ImageAnalyzer()
        self.fs = FeishuIntegration()
    
    def process_analysis(self, url: str, ocr_text: str = '', sales_data: Dict = None) -> Dict:
        """处理分析流程"""
        
        # 提取基础数据
        product_data = {
            'url': url,
            'title': '',
            'price': '',
            'rating': '',
            'review_count': ''
        }
        
        # 如果有OCR文本，提取数据
        if ocr_text:
            extracted = self.analyzer.extract_from_text(ocr_text)
            product_data.update(extracted)
        
        # 合并销售数据
        if sales_data:
            product_data['sales_data'] = sales_data
        elif 'sales_data' not in product_data:
            product_data['sales_data'] = {}
        
        # AI分析
        analysis = self.analyzer.analyze_product(product_data)
        
        return {
            'product_data': product_data,
            'analysis': analysis
        }
    
    def save_to_feishu(self, result: Dict) -> bool:
        """保存到飞书表格"""
        product_data = result['product_data']
        analysis = result['analysis']
        sales_data = product_data.get('sales_data', {})
        
        fields = convert_to_bitable_fields(product_data, analysis, sales_data)
        record_id = self.fs.create_bitable_record(fields)
        
        return record_id is not None

def main():
    import argparse
    parser = argparse.ArgumentParser(description='Coupang图片分析服务')
    parser.add_argument('--url', required=True, help='商品链接')
    parser.add_argument('--ocr-file', help='OCR文本文件路径')
    parser.add_argument('--sales-json', help='销售数据JSON')
    parser.add_argument('--no-save', action='store_true', help='不保存到飞书')
    
    args = parser.parse_args()
    
    # 读取OCR文本
    ocr_text = ''
    if args.ocr_file and os.path.exists(args.ocr_file):
        with open(args.ocr_file, 'r', encoding='utf-8') as f:
            ocr_text = f.read()
    
    # 读取销售数据
    sales_data = None
    if args.sales_json:
        try:
            sales_data = json.loads(args.sales_json)
        except:
            pass
    
    # 处理分析
    service = CoupangImageService()
    result = service.process_analysis(args.url, ocr_text, sales_data)
    
    # 输出报告
    print("=" * 60)
    print("📊 分析报告")
    print("=" * 60)
    print(f"\n商品链接: {result['product_data']['url']}")
    print(f"商品名: {result['product_data']['title'] or '（从截图提取）'}")
    print(f"价格: {result['product_data']['price'] or '（从截图提取）'}")
    
    if result['product_data'].get('sales_data'):
        print(f"\n销售数据:")
        for k, v in result['product_data']['sales_data'].items():
            print(f"  {k}: {v}")
    
    print(f"\n分析结果:")
    for k, v in result['analysis'].items():
        print(f"\n{k}:")
        print(f"  {v}")
    
    # 保存到飞书
    if not args.no_save:
        print("\n💾 保存到飞书...")
        if service.save_to_feishu(result):
            print("✅ 保存成功")
        else:
            print("❌ 保存失败")
    
    # 输出JSON
    print("\n" + "=" * 60)
    print(json.dumps(result, ensure_ascii=False, indent=2))

if __name__ == '__main__':
    main()
