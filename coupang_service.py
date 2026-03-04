#!/usr/bin/env python3
"""
Coupang竞品分析 - 完整自动化流程
支持：飞书机器人触发、批量分析、表格自动写入
"""
import asyncio
import json
import sys
import os
import re
from datetime import datetime
from typing import List, Dict

# 导入模块
from coupang_analyzer_v2 import analyze_coupang_product
from feishu_integration import FeishuIntegration, convert_to_bitable_fields

class CoupangAnalyzerService:
    """竞品分析服务"""
    
    def __init__(self):
        self.fs = FeishuIntegration()
        
    async def analyze_single(self, url: str, save_to_feishu: bool = True) -> Dict:
        """分析单个商品"""
        print(f"\n{'='*60}")
        print(f"🔍 分析商品: {url}")
        print('='*60)
        
        # 执行分析
        result = await analyze_coupang_product(url, use_mock=True)
        
        # 保存到飞书
        if save_to_feishu:
            print("\n💾 保存到飞书表格...")
            fields = convert_to_bitable_fields(result['product_data'], result['analysis'])
            record_id = self.fs.create_bitable_record(fields)
            if record_id:
                result['feishu_record_id'] = record_id
                print(f"✅ 已保存，记录ID: {record_id}")
            else:
                print("❌ 保存失败")
        
        return result
    
    async def analyze_batch(self, urls: List[str]) -> List[Dict]:
        """批量分析"""
        results = []
        for url in urls:
            try:
                result = await self.analyze_single(url)
                results.append(result)
            except Exception as e:
                print(f"❌ 分析失败 {url}: {e}")
                results.append({'error': str(e), 'url': url})
        return results
    
    def process_feishu_message(self, message_text: str, chat_id: str) -> str:
        """处理飞书消息，提取链接并分析"""
        # 提取Coupang链接
        urls = re.findall(r'https?://www\.coupang\.com/vp/products/\d+[^\s\]]*', message_text)
        
        if not urls:
            return "未检测到Coupang链接，请发送格式如：\nhttps://www.coupang.com/vp/products/8850512910"
        
        results = []
        for url in urls[:3]:  # 最多处理3个
            try:
                result = asyncio.run(self.analyze_single(url))
                results.append(result)
            except Exception as e:
                results.append({'error': str(e), 'url': url})
        
        # 生成回复
        reply = f"📊 完成 {len(results)} 个商品分析\n\n"
        for r in results:
            if 'error' in r:
                reply += f"❌ 失败: {r['url']}\n"
            else:
                title = r['product_data']['title'][:40]
                reply += f"✅ {title}...\n"
                if 'feishu_record_id' in r:
                    reply += f"   已保存到表格\n"
        
        return reply

def main():
    import argparse
    parser = argparse.ArgumentParser(description='Coupang竞品分析服务')
    parser.add_argument('urls', nargs='*', help='Coupang商品链接')
    parser.add_argument('--batch-file', '-f', help='包含链接的文本文件')
    parser.add_argument('--no-save', action='store_true', help='不保存到飞书')
    parser.add_argument('--message', '-m', help='飞书消息内容（机器人模式）')
    parser.add_argument('--chat-id', help='飞书群ID')
    
    args = parser.parse_args()
    
    service = CoupangAnalyzerService()
    
    # 机器人模式
    if args.message:
        reply = service.process_feishu_message(args.message, args.chat_id)
        print(reply)
        return
    
    # 收集链接
    urls = []
    
    if args.urls:
        urls.extend(args.urls)
    
    if args.batch_file:
        with open(args.batch_file, 'r') as f:
            for line in f:
                url = line.strip()
                if url and re.match(r'https?://www\.coupang\.com/vp/products/\d+', url):
                    urls.append(url)
    
    if not urls:
        print("用法:")
        print("  python coupang_service.py <url1> [<url2> ...]")
        print("  python coupang_service.py -f links.txt")
        print("  python coupang_service.py -m '消息内容' --chat-id 'oc_xxx'")
        sys.exit(1)
    
    # 执行分析
    print(f"🚀 开始分析 {len(urls)} 个商品...")
    results = asyncio.run(service.analyze_batch(urls))
    
    # 汇总
    print(f"\n{'='*60}")
    print("📊 分析完成汇总")
    print('='*60)
    success = sum(1 for r in results if 'error' not in r)
    print(f"成功: {success}/{len(results)}")
    
    for r in results:
        if 'error' in r:
            print(f"  ❌ {r['url']}: {r['error']}")
        else:
            title = r['product_data']['title'][:50]
            print(f"  ✅ {title}...")

if __name__ == '__main__':
    main()
