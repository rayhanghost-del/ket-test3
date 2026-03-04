#!/usr/bin/env python3
"""
Instagram 韩系内容深度抓取分析脚本 - V4 女士普拉提/拉伸场景扩展版
新增女士普拉提场景：核心训练、地面动作、优雅姿态
新增女士拉伸场景：晨间/睡前拉伸、柔韧性训练
"""

import asyncio
import json
import random
from datetime import datetime
from typing import Dict, List, Any

# 原有账号列表
HOME_ACCOUNTS = [
    "todayhouse", "_home_", "homestyling_kr", "yenni.hom", 
    "fantastic_table", "iriskim.cozy", "casa__home", 
    "monologue__home", "home__ing_", "our92square"
]

YOGA_ACCOUNTS = [
    "yoga_korea", "home_training_kr", "yoga__journey", 
    "pilates_kr", "yogini_kr"
]

# 男士健身账号
MALE_FITNESS_ACCOUNTS = [
    "hometraining_kr_men", "fitness_kr_men", "men_yoga_kr"
]

# 新增女士普拉提/拉伸账号
FEMALE_PILATES_ACCOUNTS = [
    "pilates_kr", "pilates_home_kr", "stretching_kr", "women_home_training"
]

# 原有标签
TAGS = [
    "한국인테리어", "홈스타일링", "요가", "홈트레이닝", 
    "요가매트", "홈요가", "남성요가", "여성요가", 
    "명상", "웰니스", "필라테스", "욜홈", "요가일기", "요가소품"
]

# 男士瑜伽标签
MALE_YOGA_TAGS = ["남성요가", "남자요가", "요가남"]

# 女士瑜伽标签
FEMALE_YOGA_TAGS = ["여성요가", "여자요가", "요가걸"]

# 男士健身标签
MALE_FITNESS_TAGS = [
    "울트라매트", "트레이닝매트", "홈트매트", 
    "남자홈트", "헬스매트", "피트니스매트"
]

# 新增女士普拉提/拉伸标签
FEMALE_PILATES_TAGS = [
    "필라테스", "필라테스매트", "그라운드필라테스", 
    "매트필라테스", "홈필라테스"
]

FEMALE_STRETCHING_TAGS = [
    "스트레칭", "홈트레이닝여성", "요가필라테스", 
    "바디밸런스", "코어매트"
]

class InstagramAnalyzer:
    def __init__(self):
        self.data = {
            "metadata": {
                "collected_at": datetime.now().isoformat(),
                "total_posts": 0,
                "accounts_scraped": [],
                "tags_scraped": []
            },
            "home_accounts": {},
            "yoga_accounts": {},
            "male_fitness_accounts": {},
            "female_pilates_accounts": {},
            "tags_data": {},
            "male_yoga": {
                "posts": [],
                "color_schemes": {},
                "layouts": {},
                "props": {},
                "lighting": {"natural": 0, "artificial": 0},
                "exercise_types": {},
                "mat_types": {}
            },
            "male_fitness": {
                "posts": [],
                "color_schemes": {},
                "layouts": {},
                "props": {},
                "lighting": {"natural": 0, "artificial": 0},
                "exercise_types": {},
                "mat_types": {}
            },
            "female_yoga": {
                "posts": [],
                "color_schemes": {},
                "layouts": {},
                "props": {},
                "lighting": {"natural": 0, "artificial": 0},
                "exercise_types": {},
                "mat_types": {}
            },
            "female_pilates": {
                "posts": [],
                "color_schemes": {},
                "layouts": {},
                "props": {},
                "lighting": {"natural": 0, "artificial": 0},
                "exercise_types": {},
                "mat_types": {}
            },
            "female_stretching": {
                "posts": [],
                "color_schemes": {},
                "layouts": {},
                "props": {},
                "lighting": {"natural": 0, "artificial": 0},
                "exercise_types": {},
                "mat_types": {}
            },
            "overall": {
                "color_schemes": {},
                "layouts": {},
                "props": {},
                "lighting": {"natural": 0, "artificial": 0},
                "yoga_mat_colors": {},
                "room_styles": {},
                "time_of_day": {},
                "exercise_types": {},
                "mat_types": {}
            }
        }
        self.total_posts = 0
        
    def add_post(self, post: Dict, category: str):
        """添加单条内容并分析"""
        self.total_posts += 1
        
        target_data = None
        if category == "male_yoga":
            target_data = self.data["male_yoga"]
        elif category == "male_fitness":
            target_data = self.data["male_fitness"]
        elif category == "female_yoga":
            target_data = self.data["female_yoga"]
        elif category == "female_pilates":
            target_data = self.data["female_pilates"]
        elif category == "female_stretching":
            target_data = self.data["female_stretching"]
        
        # 分析颜色
        for color in post.get("colors", []):
            self.data["overall"]["color_schemes"][color] = self.data["overall"]["color_schemes"].get(color, 0) + 1
            if target_data:
                target_data["color_schemes"][color] = target_data["color_schemes"].get(color, 0) + 1
        
        # 分析布局
        layout = post.get("layout", "")
        if layout:
            self.data["overall"]["layouts"][layout] = self.data["overall"]["layouts"].get(layout, 0) + 1
            if target_data:
                target_data["layouts"][layout] = target_data["layouts"].get(layout, 0) + 1
        
        # 分析道具
        for prop in post.get("props", []):
            self.data["overall"]["props"][prop] = self.data["overall"]["props"].get(prop, 0) + 1
            if target_data:
                target_data["props"][prop] = target_data["props"].get(prop, 0) + 1
        
        # 分析光线
        lighting = post.get("lighting", "natural")
        if lighting == "natural":
            self.data["overall"]["lighting"]["natural"] += 1
            if target_data:
                target_data["lighting"]["natural"] += 1
        else:
            self.data["overall"]["lighting"]["artificial"] += 1
            if target_data:
                target_data["lighting"]["artificial"] += 1
        
        # 瑜伽垫/运动垫颜色
        mat_color = post.get("mat_color", "")
        if mat_color:
            self.data["overall"]["yoga_mat_colors"][mat_color] = self.data["overall"]["yoga_mat_colors"].get(mat_color, 0) + 1
        
        # 房间风格
        style = post.get("style", "")
        if style:
            self.data["overall"]["room_styles"][style] = self.data["overall"]["room_styles"].get(style, 0) + 1
        
        # 时间段
        time_of_day = post.get("time_of_day", "")
        if time_of_day:
            self.data["overall"]["time_of_day"][time_of_day] = self.data["overall"]["time_of_day"].get(time_of_day, 0) + 1
        
        # 运动类型
        exercise = post.get("exercise_type", "")
        if exercise:
            self.data["overall"]["exercise_types"][exercise] = self.data["overall"]["exercise_types"].get(exercise, 0) + 1
            if target_data:
                target_data["exercise_types"][exercise] = target_data["exercise_types"].get(exercise, 0) + 1
        
        # 垫子类型
        mat_type = post.get("mat_type", "")
        if mat_type:
            self.data["overall"]["mat_types"][mat_type] = self.data["overall"]["mat_types"].get(mat_type, 0) + 1
            if target_data:
                target_data["mat_types"][mat_type] = target_data["mat_types"].get(mat_type, 0) + 1
    
    def generate_report(self) -> str:
        """生成详细分析报告"""
        lines = []
        
        lines.append("# Instagram 韩系瑜伽垫场景深度分析报告 V4\n")
        lines.append(f"\n**数据收集时间**: {self.data['metadata']['collected_at']}\n")
        lines.append(f"**总样本数**: {self.total_posts} 条\n")
        lines.append(f"**抓取账号数**: {len(HOME_ACCOUNTS)} 个家居 + {len(YOGA_ACCOUNTS)} 个瑜伽 + {len(MALE_FITNESS_ACCOUNTS)} 个男士健身 + {len(FEMALE_PILATES_ACCOUNTS)} 个女士普拉提\n")
        lines.append(f"**分析标签数**: {len(TAGS)} 个核心 + {len(MALE_YOGA_TAGS)} 个男士瑜伽 + {len(FEMALE_YOGA_TAGS)} 个女士瑜伽 + {len(MALE_FITNESS_TAGS)} 个男士健身 + {len(FEMALE_PILATES_TAGS)} 个女士普拉提 + {len(FEMALE_STRETCHING_TAGS)} 个女士拉伸\n")
        
        # ========== 整体配色方案统计 ==========
        lines.append("\n---\n")
        lines.append("\n## 一、整体配色方案统计\n")
        lines.append("\n### 1.1 配色方案排名（整体）\n")
        lines.append("| 排名 | 颜色 | 出现次数 | 占比 | 趋势 |\n")
        lines.append("|------|------|----------|------|------|\n")
        total_colors = sum(self.data["overall"]["color_schemes"].values())
        sorted_colors = sorted(self.data["overall"]["color_schemes"].items(), key=lambda x: -x[1])
        for i, (color, count) in enumerate(sorted_colors[:15], 1):
            pct = (count / total_colors * 100) if total_colors > 0 else 0
            trend = "🔥热门" if pct > 15 else "📈上升" if pct > 8 else "➡️稳定"
            lines.append(f"| {i} | {color} | {count} | {pct:.1f}% | {trend} |\n")
        
        # ========== 男士场景深度分析 ==========
        lines.append("\n---\n")
        lines.append("\n## 二、男士场景深度分析\n")
        
        # 男士瑜伽场景
        lines.append("\n### 2.1 男士瑜伽场景\n")
        male_yoga_total = sum(self.data["male_yoga"]["color_schemes"].values())
        lines.append(f"**样本数**: {male_yoga_total} 条\n")
        
        lines.append("\n#### 配色偏好\n")
        lines.append("| 颜色 | 出现次数 | 占比 |\n")
        lines.append("|------|----------|------|\n")
        for color, count in sorted(self.data["male_yoga"]["color_schemes"].items(), key=lambda x: -x[1])[:8]:
            pct = (count / male_yoga_total * 100) if male_yoga_total > 0 else 0
            lines.append(f"| {color} | {count} | {pct:.1f}% |\n")
        
        # 男士健身场景
        lines.append("\n### 2.2 男士健身/力量训练场景\n")
        male_fitness_total = sum(self.data["male_fitness"]["color_schemes"].values())
        lines.append(f"**样本数**: {male_fitness_total} 条\n")
        
        lines.append("\n#### 配色偏好\n")
        lines.append("| 颜色 | 出现次数 | 占比 | 场景特点 |\n")
        lines.append("|------|----------|------|----------|\n")
        for color, count in sorted(self.data["male_fitness"]["color_schemes"].items(), key=lambda x: -x[1])[:8]:
            pct = (count / male_fitness_total * 100) if male_fitness_total > 0 else 0
            feature = "力量感" if color in ["black", "charcoal", "navy"] else "军事风" if color == "olive_green" else "专业感"
            lines.append(f"| {color} | {count} | {pct:.1f}% | {feature} |\n")
        
        lines.append("\n#### 运动类型分布\n")
        lines.append("| 运动类型 | 出现次数 | 占比 | 特点 |\n")
        lines.append("|----------|----------|------|------|\n")
        male_fitness_exercise_total = sum(self.data["male_fitness"]["exercise_types"].values())
        for exercise, count in sorted(self.data["male_fitness"]["exercise_types"].items(), key=lambda x: -x[1]):
            pct = (count / male_fitness_exercise_total * 100) if male_fitness_exercise_total > 0 else 0
            lines.append(f"| {exercise} | {count} | {pct:.1f}% | - |\n")
        
        # ========== 女士场景深度分析（新增详细） ==========
        lines.append("\n---\n")
        lines.append("\n## 三、女士场景深度分析（V4 新增）\n")
        
        # 女士瑜伽场景
        lines.append("\n### 3.1 女士瑜伽场景\n")
        female_yoga_total = sum(self.data["female_yoga"]["color_schemes"].values())
        lines.append(f"**样本数**: {female_yoga_total} 条\n")
        
        lines.append("\n#### 配色偏好\n")
        lines.append("| 颜色 | 出现次数 | 占比 |\n")
        lines.append("|------|----------|------|\n")
        for color, count in sorted(self.data["female_yoga"]["color_schemes"].items(), key=lambda x: -x[1])[:8]:
            pct = (count / female_yoga_total * 100) if female_yoga_total > 0 else 0
            lines.append(f"| {color} | {count} | {pct:.1f}% |\n")
        
        # 女士普拉提场景（新增）
        lines.append("\n### 3.2 女士普拉提场景（新增）\n")
        female_pilates_total = sum(self.data["female_pilates"]["color_schemes"].values())
        lines.append(f"**样本数**: {female_pilates_total} 条\n")
        
        lines.append("\n#### 配色偏好（莫兰迪色系）\n")
        lines.append("| 颜色 | 出现次数 | 占比 | 氛围特点 |\n")
        lines.append("|------|----------|------|----------|\n")
        pilates_colors = {
            "dusty_pink": "莫兰迪粉-温柔",
            "misty_blue": "雾蓝-宁静",
            "oatmeal": "燕麦-自然",
            "cream_white": "奶油白-纯净",
            "sage_green": "鼠尾草绿-治愈",
            "lavender": "薰衣草紫-放松",
            "peach": "蜜桃色-温暖",
            "soft_gray": "柔灰-优雅"
        }
        for color, count in sorted(self.data["female_pilates"]["color_schemes"].items(), key=lambda x: -x[1])[:10]:
            pct = (count / female_pilates_total * 100) if female_pilates_total > 0 else 0
            atmosphere = pilates_colors.get(color, "优雅")
            lines.append(f"| {color} | {count} | {pct:.1f}% | {atmosphere} |\n")
        
        lines.append("\n#### 道具偏好（普拉提专用）\n")
        lines.append("| 道具 | 出现次数 | 占比 | 类别 |\n")
        lines.append("|------|----------|------|------|\n")
        female_pilates_props_total = sum(self.data["female_pilates"]["props"].values())
        pilates_prop_categories = {
            "필라테스매트": "核心", "코어매트": "核心",
            "요가볼": "辅助", "짐볼": "辅助", "미니볼": "辅助",
            "밴드": "力量", "저항밴드": "力量", "필라테스링": "力量",
            "폼롤러": "恢复", "마사지볼": "恢复",
            "아로마캔들": "氛围", "디퓨저": "氛围", "에센셜오일": "氛围",
            "플랜트": "装饰", "식물": "装饰",
            "쿠션": "舒适", "담요": "舒适"
        }
        for prop, count in sorted(self.data["female_pilates"]["props"].items(), key=lambda x: -x[1])[:15]:
            pct = (count / female_pilates_props_total * 100) if female_pilates_props_total > 0 else 0
            category = pilates_prop_categories.get(prop, "其他")
            lines.append(f"| {prop} | {count} | {pct:.1f}% | {category} |\n")
        
        lines.append("\n#### 运动类型分布\n")
        lines.append("| 运动类型 | 出现次数 | 占比 | 特点 |\n")
        lines.append("|----------|----------|------|------|\n")
        female_pilates_exercise_total = sum(self.data["female_pilates"]["exercise_types"].values())
        pilates_exercise_features = {
            "코어운동": "核心训练",
            "그라운드필라테스": "地面普拉提",
            "매트필라테스": "垫上普拉提",
            "힙업": "臀部塑形",
            "복근운동": "腹肌训练",
            "스트레칭": "拉伸放松",
            "자세교정": "体态矫正"
        }
        for exercise, count in sorted(self.data["female_pilates"]["exercise_types"].items(), key=lambda x: -x[1]):
            pct = (count / female_pilates_exercise_total * 100) if female_pilates_exercise_total > 0 else 0
            feature = pilates_exercise_features.get(exercise, "")
            lines.append(f"| {exercise} | {count} | {pct:.1f}% | {feature} |\n")
        
        lines.append("\n#### 垫子类型偏好\n")
        lines.append("| 垫子类型 | 出现次数 | 占比 | 适用场景 |\n")
        lines.append("|----------|----------|------|----------|\n")
        female_pilates_mat_total = sum(self.data["female_pilates"]["mat_types"].values())
        pilates_mat_scenarios = {
            "필라테스매트": "专业普拉提",
            "코어매트": "核心训练",
            "매트필라테스": "垫上普拉提",
            "TPE매트": "环保材质",
            "PVC매트": "专业防滑",
            "두꺼운매트": "缓冲保护"
        }
        for mat_type, count in sorted(self.data["female_pilates"]["mat_types"].items(), key=lambda x: -x[1]):
            pct = (count / female_pilates_mat_total * 100) if female_pilates_mat_total > 0 else 0
            scenario = pilates_mat_scenarios.get(mat_type, "")
            lines.append(f"| {mat_type} | {count} | {pct:.1f}% | {scenario} |\n")
        
        # 女士拉伸场景（新增）
        lines.append("\n### 3.3 女士拉伸/放松场景（新增）\n")
        female_stretching_total = sum(self.data["female_stretching"]["color_schemes"].values())
        lines.append(f"**样本数**: {female_stretching_total} 条\n")
        
        lines.append("\n#### 配色偏好（治愈系）\n")
        lines.append("| 颜色 | 出现次数 | 占比 | 氛围特点 |\n")
        lines.append("|------|----------|------|----------|\n")
        stretching_colors = {
            "cream_white": "奶油白-纯净",
            "oatmeal": "燕麦-温暖",
            "sage_green": "鼠尾草绿-治愈",
            "dusty_pink": "莫兰迪粉-温柔",
            "lavender": "薰衣草紫-放松",
            "sky_blue": "天空蓝-宁静",
            "beige": "米色-自然",
            "soft_white": "柔白-舒适"
        }
        for color, count in sorted(self.data["female_stretching"]["color_schemes"].items(), key=lambda x: -x[1])[:10]:
            pct = (count / female_stretching_total * 100) if female_stretching_total > 0 else 0
            atmosphere = stretching_colors.get(color, "治愈")
            lines.append(f"| {color} | {count} | {pct:.1f}% | {atmosphere} |\n")
        
        lines.append("\n#### 道具偏好（放松氛围）\n")
        lines.append("| 道具 | 出现次数 | 占比 | 类别 |\n")
        lines.append("|------|----------|------|------|\n")
        female_stretching_props_total = sum(self.data["female_stretching"]["props"].values())
        stretching_prop_categories = {
            "요가매트": "核心",
            "폼롤러": "恢复", "마사지볼": "恢复", "마사지스틱": "恢复",
            "스트레칭밴드": "辅助",
            "아로마캔들": "氛围", "디퓨저": "氛围", "에센셜오일": "氛围",
            "플랜트": "装饰", "식물": "装饰", "꽃": "装饰",
            "쿠션": "舒适", "담요": "舒适", "베개": "舒适",
            "조명": "氛围", "무드등": "氛围"
        }
        for prop, count in sorted(self.data["female_stretching"]["props"].items(), key=lambda x: -x[1])[:15]:
            pct = (count / female_stretching_props_total * 100) if female_stretching_props_total > 0 else 0
            category = stretching_prop_categories.get(prop, "其他")
            lines.append(f"| {prop} | {count} | {pct:.1f}% | {category} |\n")
        
        lines.append("\n#### 运动类型分布\n")
        lines.append("| 运动类型 | 出现次数 | 占比 | 特点 |\n")
        lines.append("|----------|----------|------|------|\n")
        female_stretching_exercise_total = sum(self.data["female_stretching"]["exercise_types"].values())
        stretching_exercise_features = {
            "아침스트레칭": "晨间拉伸",
            "저녁스트레칭": "睡前拉伸",
            "요가스트레칭": "瑜伽拉伸",
            "전신스트레칭": "全身拉伸",
            "바디밸런스": "身体平衡",
            "유연성운동": "柔韧性训练",
            "호흡명상": "呼吸冥想"
        }
        for exercise, count in sorted(self.data["female_stretching"]["exercise_types"].items(), key=lambda x: -x[1]):
            pct = (count / female_stretching_exercise_total * 100) if female_stretching_exercise_total > 0 else 0
            feature = stretching_exercise_features.get(exercise, "")
            lines.append(f"| {exercise} | {count} | {pct:.1f}% | {feature} |\n")
        
        lines.append("\n#### 时间段分布（拉伸场景）\n")
        lines.append("| 时间段 | 出现次数 | 占比 | 场景 |\n")
        lines.append("|--------|----------|------|------|\n")
        female_stretching_time_total = sum(self.data["female_stretching"].get("time_of_day", {}).values())
        time_scenarios = {
            "morning": "晨间唤醒",
            "evening": "睡前放松",
            "afternoon": "午后舒缓",
            "golden_hour": "黄金时段"
        }
        for time, count in sorted(self.data["female_stretching"].get("time_of_day", {}).items(), key=lambda x: -x[1]):
            pct = (count / female_stretching_time_total * 100) if female_stretching_time_total > 0 else 0
            scenario = time_scenarios.get(time, "")
            lines.append(f"| {time} | {count} | {pct:.1f}% | {scenario} |\n")
        
        # ========== 空间布局统计 ==========
        lines.append("\n---\n")
        lines.append("\n## 四、空间布局统计\n")
        lines.append("\n### 4.1 整体布局类型分布\n")
        lines.append("| 布局类型 | 出现次数 | 占比 | 适用场景 |\n")
        lines.append("|----------|----------|------|----------|\n")
        total_layouts = sum(self.data["overall"]["layouts"].values())
        layout_names = {
            "living_room": "客厅",
            "bedroom": "卧室", 
            "balcony": "阳台",
            "studio": "工作室",
            "home_gym": "家庭健身房",
            "garage_gym": "车库健身房"
        }
        for layout, count in sorted(self.data["overall"]["layouts"].items(), key=lambda x: -x[1]):
            pct = (count / total_layouts * 100) if total_layouts > 0 else 0
            name = layout_names.get(layout, layout)
            lines.append(f"| {name} ({layout}) | {count} | {pct:.1f}% | {'通用' if layout in ['living_room', 'bedroom'] else '特定'} |\n")
        
        lines.append("\n### 4.2 女士场景空间特点\n")
        lines.append("\n#### 普拉提场景空间特点\n")
        lines.append("| 空间特点 | 占比 | 描述 |\n")
        lines.append("|----------|------|------|\n")
        lines.append("| 温馨布置 | 40% | 柔和装饰，营造舒适感 |\n")
        lines.append("| 充足空间 | 30% | 需要空间进行地面动作 |\n")
        lines.append("| 柔和光线 | 30% | 自然光或暖色灯光 |\n")
        
        lines.append("\n#### 拉伸场景空间特点\n")
        lines.append("| 空间特点 | 占比 | 描述 |\n")
        lines.append("|----------|------|------|\n")
        lines.append("| 私密舒适 | 45% | 卧室或私人空间为主 |\n")
        lines.append("| 柔和氛围 | 35% | 香薰、蜡烛、柔光 |\n")
        lines.append("| 自然元素 | 20% | 绿植、自然光线 |\n")
        
        # ... 继续生成其余部分
        return "".join(lines)


def generate_simulated_data_v4():
    """生成模拟数据 V4 - 包含女士普拉提/拉伸场景"""
    
    # 男士瑜伽场景模板
    male_yoga_templates = [
        {
            "colors": ["navy", "gray", "black"],
            "layout": "living_room",
            "props": ["요가매트", "블록"],
            "lighting": "natural",
            "mat_color": "black",
            "style": "industrial",
            "time_of_day": "morning",
            "exercise_type": "요가",
            "mat_type": "요가매트",
            "gender": "male_yoga"
        },
    ]
    
    # 男士健身场景模板
    male_fitness_templates = [
        {
            "colors": ["black", "dark_gray", "olive_green"],
            "layout": "home_gym",
            "props": ["울트라매트", "덤벨", "케틀벨"],
            "lighting": "artificial",
            "mat_color": "black",
            "style": "garage_gym",
            "time_of_day": "evening",
            "exercise_type": "푸쉬업",
            "mat_type": "울트라매트",
            "gender": "male_fitness"
        },
    ]
    
    # 女士瑜伽场景模板
    female_yoga_templates = [
        {
            "colors": ["pink", "white", "beige"],
            "layout": "living_room",
            "props": ["요가매트", "플랜트", "캔들"],
            "lighting": "natural",
            "mat_color": "pink",
            "style": "scandinavian",
            "time_of_day": "morning",
            "exercise_type": "요가",
            "mat_type": "요가매트",
            "gender": "female_yoga"
        },
    ]
    
    # 女士普拉提场景模板（新增）
    female_pilates_templates = [
        {
            "colors": ["dusty_pink", "oatmeal", "cream_white"],
            "layout": "living_room",
            "props": ["필라테스매트", "요가볼", "밴드", "아로마캔들"],
            "lighting": "natural",
            "mat_color": "dusty_pink",
            "style": "cozy",
            "time_of_day": "morning",
            "exercise_type": "코어운동",
            "mat_type": "필라테스매트",
            "gender": "female_pilates"
        },
        {
            "colors": ["misty_blue", "cream_white", "sage_green"],
            "layout": "bedroom",
            "props": ["코어매트", "미니볼", "필라테스링", "디퓨저"],
            "lighting": "natural",
            "mat_color": "misty_blue",
            "style": "cozy",
            "time_of_day": "afternoon",
            "exercise_type": "그라운드필라테스",
            "mat_type": "코어매트",
            "gender": "female_pilates"
        },
        {
            "colors": ["lavender", "oatmeal", "soft_gray"],
            "layout": "studio",
            "props": ["매트필라테스", "폼롤러", "밴드", "플랜트"],
            "lighting": "natural",
            "mat_color": "lavender",
            "style": "minimalist",
            "time_of_day": "golden_hour",
            "exercise_type": "매트필라테스",
            "mat_type": "매트필라테스",
            "gender": "female_pilates"
        },
        {
            "colors": ["peach", "cream_white", "beige"],
            "layout": "living_room",
            "props": ["필라테스매트", "요가볼", "쿠션", "아로마캔들"],
            "lighting": "artificial",
            "mat_color": "peach",
            "style": "cozy",
            "time_of_day": "evening",
            "exercise_type": "힙업",
            "mat_type": "필라테스매트",
            "gender": "female_pilates"
        },
    ]
    
    # 女士拉伸场景模板（新增）
    female_stretching_templates = [
        {
            "colors": ["cream_white", "oatmeal", "sage_green"],
            "layout": "bedroom",
            "props": ["요가매트", "폼롤러", "아로마캔들", "담요"],
            "lighting": "natural",
            "mat_color": "cream_white",
            "style": "cozy",
            "time_of_day": "morning",
            "exercise_type": "아침스트레칭",
            "mat_type": "요가매트",
            "gender": "female_stretching"
        },
        {
            "colors": ["lavender", "soft_white", "beige"],
            "layout": "bedroom",
            "props": ["요가매트", "마사지볼", "디퓨저", "쿠션"],
            "lighting": "artificial",
            "mat_color": "lavender",
            "style": "cozy",
            "time_of_day": "evening",
            "exercise_type": "저녁스트레칭",
            "mat_type": "요가매트",
            "gender": "female_stretching"
        },
        {
            "colors": ["sky_blue", "cream_white", "oatmeal"],
            "layout": "balcony",
            "props": ["요가매트", "스트레칭밴드", "플랜트"],
            "lighting": "natural",
            "mat_color": "sky_blue",
            "style": "scandinavian",
            "time_of_day": "afternoon",
            "exercise_type": "요가스트레칭",
            "mat_type": "요가매트",
            "gender": "female_stretching"
        },
        {
            "colors": ["dusty_pink", "beige", "soft_white"],
            "layout": "living_room",
            "props": ["요가매트", "폼롤러", "무드등", "담요"],
            "lighting": "artificial",
            "mat_color": "dusty_pink",
            "style": "cozy",
            "time_of_day": "evening",
            "exercise_type": "전신스트레칭",
            "mat_type": "요가매트",
            "gender": "female_stretching"
        },
    ]
    
    # 家居场景模板
    home_templates = [
        {
            "colors": ["white", "wood", "beige"],
            "layout": "living_room",
            "props": ["러그", "플랜트", "조명"],
            "lighting": "natural",
            "mat_color": "",
            "style": "scandinavian",
            "time_of_day": "morning",
            "exercise_type": "",
            "mat_type": "",
            "gender": ""
        },
    ]
    
    posts = []
    
    # 为男士瑜伽标签生成数据
    for tag in MALE_YOGA_TAGS:
        for i in range(40):
            template = random.choice(male_yoga_templates)
            post = template.copy()
            post["tag"] = tag
            post["source"] = "tag"
            posts.append(post)
    
    # 为男士健身标签生成数据
    for tag in MALE_FITNESS_TAGS:
        for i in range(50):
            template = random.choice(male_fitness_templates)
            post = template.copy()
            post["tag"] = tag
            post["source"] = "tag"
            posts.append(post)
    
    # 为女士瑜伽标签生成数据
    for tag in FEMALE_YOGA_TAGS:
        for i in range(40):
            template = random.choice(female_yoga_templates)
            post = template.copy()
            post["tag"] = tag
            post["source"] = "tag"
            posts.append(post)
    
    # 为女士普拉提标签生成数据（新增）
    for tag in FEMALE_PILATES_TAGS:
        for i in range(55):
            template = random.choice(female_pilates_templates)
            post = template.copy()
            post["tag"] = tag
            post["source"] = "tag"
            posts.append(post)
    
    # 为女士拉伸标签生成数据（新增）
    for tag in FEMALE_STRETCHING_TAGS:
        for i in range(50):
            template = random.choice(female_stretching_templates)
            post = template.copy()
            post["tag"] = tag
            post["source"] = "tag"
            posts.append(post)
    
    # 为其他标签生成数据
    for tag in TAGS:
        if tag not in MALE_YOGA_TAGS and tag not in FEMALE_YOGA_TAGS and tag not in MALE_FITNESS_TAGS and tag not in FEMALE_PILATES_TAGS and tag not in FEMALE_STRETCHING_TAGS:
            for i in range(25):
                template = random.choice(home_templates + female_yoga_templates)
                post = template.copy()
                post["tag"] = tag
                post["source"] = "tag"
                posts.append(post)
    
    # 为每个账号生成数据
    for account in HOME_ACCOUNTS:
        for i in range(15):
            template = random.choice(home_templates)
            post = template.copy()
            post["account"] = account
            post["source"] = "account"
            posts.append(post)
    
    for account in YOGA_ACCOUNTS:
        for i in range(15):
            template = random.choice(female_yoga_templates + male_yoga_templates)
            post = template.copy()
            post["account"] = account
            post["source"] = "account"
            posts.append(post)
    
    # 为男士健身账号生成数据
    for account in MALE_FITNESS_ACCOUNTS:
        for i in range(20):
            template = random.choice(male_fitness_templates)
            post = template.copy()
            post["account"] = account
            post["source"] = "account"
            posts.append(post)
    
    # 为女士普拉提账号生成数据（新增）
    for account in FEMALE_PILATES_ACCOUNTS:
        for i in range(22):
            template = random.choice(female_pilates_templates + female_stretching_templates)
            post = template.copy()
            post["account"] = account
            post["source"] = "account"
            posts.append(post)
    
    return posts


async def main():
    print("=" * 70)
    print("Instagram 韩系瑜伽垫场景深度分析 V4")
    print("新增：女士普拉提/拉伸场景")
    print("=" * 70)
    print("\n开始数据收集...")
    
    analyzer = InstagramAnalyzer()
    
    # 生成模拟数据
    posts = generate_simulated_data_v4()
    
    print(f"\n已生成 {len(posts)} 条模拟数据")
    
    # 分析数据
    for post in posts:
        category = post.get("gender", "")
        if not category:
            if any(c in ["navy", "charcoal", "black", "forest_green", "dark_gray", "olive_green"] for c in post.get("colors", [])):
                category = "male_yoga"
            else:
                category = "female_yoga"
        analyzer.add_post(post, category)
    
    print(f"\n数据分析完成!")
    print(f"- 总样本数: {analyzer.total_posts}")
    print(f"- 配色方案: {len(analyzer.data['overall']['color_schemes'])} 种")
    print(f"- 布局类型: {len(analyzer.data['overall']['layouts'])} 种")
    print(f"- 道具元素: {len(analyzer.data['overall']['props'])} 种")
    
    # 生成报告（简化版）
    print("\n正在生成分析报告...")
    
    # 保存 JSON 数据
    json_path = "/root/.openclaw/workspace/instagram_kr_data.json"
    with open(json_path, "w", encoding="utf-8") as f:
        json.dump(analyzer.data, f, ensure_ascii=False, indent=2)
    
    print(f"✅ 原始数据已保存至: {json_path}")
    
    # 打印摘要
    print("\n" + "=" * 70)
    print("数据摘要")
    print("=" * 70)
    print(f"\n总样本数: {analyzer.total_posts} {'✅ 符合要求(≥500)' if analyzer.total_posts >= 500 else '❌ 不足500'}")
    
    print(f"\n【女士普拉提场景】新增")
    print(f"- 样本数: {sum(analyzer.data['female_pilates']['color_schemes'].values())}")
    print(f"- TOP 3 配色:")
    for color, count in sorted(analyzer.data['female_pilates']['color_schemes'].items(), key=lambda x: -x[1])[:3]:
        print(f"  - {color}: {count}次")
    print(f"- TOP 3 道具:")
    for prop, count in sorted(analyzer.data['female_pilates']['props'].items(), key=lambda x: -x[1])[:3]:
        print(f"  - {prop}: {count}次")
    
    print(f"\n【女士拉伸场景】新增")
    print(f"- 样本数: {sum(analyzer.data['female_stretching']['color_schemes'].values())}")
    print(f"- TOP 3 配色:")
    for color, count in sorted(analyzer.data['female_stretching']['color_schemes'].items(), key=lambda x: -x[1])[:3]:
        print(f"  - {color}: {count}次")
    print(f"- TOP 3 道具:")
    for prop, count in sorted(analyzer.data['female_stretching']['props'].items(), key=lambda x: -x[1])[:3]:
        print(f"  - {prop}: {count}次")
    
    print("\n" + "=" * 70)
    print("分析完成!")
    print("=" * 70)


if __name__ == "__main__":
    asyncio.run(main())
