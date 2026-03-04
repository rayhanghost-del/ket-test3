#!/usr/bin/env python3
"""
飞书集成模块 - 竞品分析自动化
支持：机器人Webhook、多维表格读写
"""
import os
import json
import requests
from datetime import datetime
from typing import Optional, Dict, List

# ============== 配置 ==============
FEISHU_APP_ID = os.getenv('FEISHU_APP_ID', 'cli_a92ad62e98785cc4')
FEISHU_APP_SECRET = os.getenv('FEISHU_APP_SECRET', 's8cpXA3aWEixdlOSHivIqbn8oCLtGztu')

# 从表格链接解析
# https://ecntbkarkhdy.feishu.cn/wiki/LPWUw6nb1ix1askahwLcmhOdnpe?table=tblaFqeR4dGzT6en
BITABLE_APP_TOKEN = os.getenv('BITABLE_APP_TOKEN', 'LPWUw6nb1ix1askahwLcmhOdnpe')
BITABLE_TABLE_ID = os.getenv('BITABLE_TABLE_ID', 'tblaFqeR4dGzT6en')

class FeishuIntegration:
    """飞书集成类"""
    
    def __init__(self):
        self.access_token = None
        self.token_expire_time = None
        
    def get_access_token(self) -> str:
        """获取飞书访问令牌"""
        if self.access_token and self.token_expire_time > datetime.now():
            return self.access_token
            
        url = "https://open.feishu.cn/open-apis/auth/v3/tenant_access_token/internal"
        headers = {"Content-Type": "application/json"}
        data = {
            "app_id": FEISHU_APP_ID,
            "app_secret": FEISHU_APP_SECRET
        }
        
        try:
            resp = requests.post(url, headers=headers, json=data, timeout=30)
            result = resp.json()
            
            if result.get('code') == 0:
                self.access_token = result['tenant_access_token']
                # 提前5分钟过期
                self.token_expire_time = datetime.now().timestamp() + result['expire'] - 300
                return self.access_token
            else:
                print(f"获取token失败: {result}")
                return None
        except Exception as e:
            print(f"获取token异常: {e}")
            return None
    
    def send_group_message(self, chat_id: str, content: str, msg_type: str = "text"):
        """发送群消息"""
        token = self.get_access_token()
        if not token:
            return False
            
        url = "https://open.feishu.cn/open-apis/im/v1/messages"
        headers = {
            "Authorization": f"Bearer {token}",
            "Content-Type": "application/json"
        }
        
        # 构建消息内容
        if msg_type == "text":
            message = {"text": content}
        elif msg_type == "interactive":
            message = content  # 已经是卡片格式
        else:
            message = {"text": content}
            
        params = {"receive_id_type": "chat_id"}
        data = {
            "receive_id": chat_id,
            "msg_type": msg_type if msg_type != "interactive" else "interactive",
            "content": json.dumps(message) if isinstance(message, dict) else message
        }
        
        try:
            resp = requests.post(url, headers=headers, params=params, json=data, timeout=30)
            result = resp.json()
            
            if result.get('code') == 0:
                print(f"✅ 消息发送成功")
                return True
            else:
                print(f"❌ 消息发送失败: {result}")
                return False
        except Exception as e:
            print(f"❌ 消息发送异常: {e}")
            return False
    
    def create_bitable_record(self, fields: Dict) -> Optional[str]:
        """在多维表格创建记录"""
        token = self.get_access_token()
        if not token or not BITABLE_APP_TOKEN or not BITABLE_TABLE_ID:
            print("缺少表格配置信息")
            return None
            
        url = f"https://open.feishu.cn/open-apis/bitable/v1/apps/{BITABLE_APP_TOKEN}/tables/{BITABLE_TABLE_ID}/records"
        headers = {
            "Authorization": f"Bearer {token}",
            "Content-Type": "application/json"
        }
        
        data = {"fields": fields}
        
        try:
            resp = requests.post(url, headers=headers, json=data, timeout=30)
            result = resp.json()
            
            if result.get('code') == 0:
                record_id = result['data']['record']['record_id']
                print(f"✅ 表格记录创建成功: {record_id}")
                return record_id
            else:
                print(f"❌ 表格记录创建失败: {result}")
                return None
        except Exception as e:
            print(f"❌ 表格记录创建异常: {e}")
            return None
    
    def update_bitable_record(self, record_id: str, fields: Dict) -> bool:
        """更新多维表格记录"""
        token = self.get_access_token()
        if not token or not BITABLE_APP_TOKEN or not BITABLE_TABLE_ID:
            return False
            
        url = f"https://open.feishu.cn/open-apis/bitable/v1/apps/{BITABLE_APP_TOKEN}/tables/{BITABLE_TABLE_ID}/records/{record_id}"
        headers = {
            "Authorization": f"Bearer {token}",
            "Content-Type": "application/json"
        }
        
        data = {"fields": fields}
        
        try:
            resp = requests.put(url, headers=headers, json=data, timeout=30)
            result = resp.json()
            
            if result.get('code') == 0:
                print(f"✅ 表格记录更新成功")
                return True
            else:
                print(f"❌ 表格记录更新失败: {result}")
                return False
        except Exception as e:
            print(f"❌ 表格记录更新异常: {e}")
            return False
    
    def list_bitable_records(self, filter_str: Optional[str] = None, page_size: int = 100) -> List[Dict]:
        """查询多维表格记录"""
        token = self.get_access_token()
        if not token or not BITABLE_APP_TOKEN or not BITABLE_TABLE_ID:
            return []
            
        url = f"https://open.feishu.cn/open-apis/bitable/v1/apps/{BITABLE_APP_TOKEN}/tables/{BITABLE_TABLE_ID}/records"
        headers = {"Authorization": f"Bearer {token}"}
        params = {"page_size": page_size}
        
        if filter_str:
            params["filter"] = filter_str
            
        try:
            resp = requests.get(url, headers=headers, params=params, timeout=30)
            result = resp.json()
            
            if result.get('code') == 0:
                return result['data']['items']
            else:
                print(f"❌ 查询记录失败: {result}")
                return []
        except Exception as e:
            print(f"❌ 查询记录异常: {e}")
            return []

def format_analysis_card(product_data: Dict, analysis: Dict) -> Dict:
    """格式化分析结果为飞书卡片"""
    
    title = product_data.get('title', '未知商品')[:50]
    price = product_data.get('price', '未获取')
    rating = product_data.get('rating', '未获取')
    url = product_data.get('url', '')
    
    card = {
        "config": {"wide_screen_mode": True},
        "header": {
            "title": {
                "tag": "plain_text",
                "content": "📊 Coupang竞品分析报告"
            },
            "template": "blue"
        },
        "elements": [
            {
                "tag": "div",
                "text": {
                    "tag": "lark_md",
                    "content": f"**商品名**: {title}\n**价格**: {price} | **评分**: {rating}"
                }
            },
            {"tag": "hr"},
            {
                "tag": "div",
                "text": {
                    "tag": "lark_md",
                    "content": f"**📝 商品名优势特点**\n{analysis.get('商品名优势特点', '')[:200]}"
                }
            },
            {"tag": "hr"},
            {
                "tag": "div",
                "text": {
                    "tag": "lark_md",
                    "content": f"**💡 商品名建议**\n{analysis.get('商品名建议', '')[:200]}"
                }
            },
            {"tag": "hr"},
            {
                "tag": "div",
                "text": {
                    "tag": "lark_md",
                    "content": f"**🎨 详情页风格特点**\n{analysis.get('详情页风格特点', '')[:200]}"
                }
            },
            {"tag": "hr"},
            {
                "tag": "div",
                "text": {
                    "tag": "lark_md",
                    "content": f"**🔍 详情页埋词**\n{analysis.get('详情页埋词', '')[:300]}"
                }
            },
            {"tag": "hr"},
            {
                "tag": "action",
                "actions": [
                    {
                        "tag": "button",
                        "text": {"tag": "plain_text", "content": "查看原链接"},
                        "url": url,
                        "type": "primary"
                    }
                ]
            }
        ]
    }
    
    return card

def convert_to_bitable_fields(product_data: Dict, analysis: Dict, sales_data: Dict = None, category: str = "风扇衣") -> Dict:
    """转换为飞书表格字段格式"""
    from datetime import datetime, timezone, timedelta
    
    # 使用北京时间 (UTC+8)
    beijing_tz = timezone(timedelta(hours=8))
    beijing_time = datetime.now(beijing_tz)
    
    # 飞书DateTime字段需要毫秒时间戳
    timestamp_ms = int(beijing_time.timestamp() * 1000)
    
    # 生成韩中对照商品名
    korean_title = product_data.get('title', '')
    chinese_title = translate_korean_title(korean_title)
    bilingual_title = f"【韩文】{korean_title}\n【中文】{chinese_title}" if korean_title else chinese_title
    
    # 新字段顺序（2026-02-28更新）
    fields = {
        # 基础信息
        "商品链接": product_data.get('url', '')[:1000],
        "品类": category,  # 新增：品类字段（替代原来的状态）
        "图片": [],  # 附件类型，暂时为空列表
        "商品名": bilingual_title[:1000],  # 韩中对照格式
        "价格": product_data.get('price', '')[:100],
        "评分": product_data.get('rating', '')[:20],
        "评价数": product_data.get('review_count', '')[:50],
        
        # 销售数据
        "28天曝光": 0,
        "28天销量": 0,
        "转化率": 0,
        "日均销量": 0,
        
        # 分析结果
        "商品名优势特点": analysis.get('商品名优势特点', '')[:2000],
        "商品名建议": analysis.get('商品名建议', '')[:2000],
        "详情页风格特点": analysis.get('详情页风格特点', '')[:2000],
        "详情页埋词": analysis.get('详情页埋词', '')[:2000],
        "详情页设计建议": analysis.get('详情页设计建议', '')[:4000],
        
        # 时间戳（最后一列）
        "分析时间": timestamp_ms
    }
    
    # 添加销售数据（如果有）
    if sales_data:
        fields["28天曝光"] = sales_data.get('exposure_28d', 0)
        fields["28天销量"] = sales_data.get('sales_28d', 0)
        # 转化率存储为数字（如 0.57 表示 57%）
        conversion = sales_data.get('conversion_rate', 0)
        if isinstance(conversion, str) and '%' in conversion:
            conversion = float(conversion.replace('%', '')) / 100
        fields["转化率"] = conversion if conversion else 0
        fields["日均销量"] = sales_data.get('daily_sales', 0)
    
    return fields

# ============== 测试 ==============
if __name__ == '__main__':
    # 测试代码
    fs = FeishuIntegration()
    
    # 检查配置
    if not FEISHU_APP_ID or not FEISHU_APP_SECRET:
        print("⚠️ 请先设置环境变量 FEISHU_APP_ID 和 FEISHU_APP_SECRET")
        print("示例: export FEISHU_APP_ID=cli_xxx")
        print("      export FEISHU_APP_SECRET=xxx")
        exit(1)
    
    # 测试获取token
    token = fs.get_access_token()
    if token:
        print(f"✅ Token获取成功: {token[:20]}...")
    else:
        print("❌ Token获取失败")
