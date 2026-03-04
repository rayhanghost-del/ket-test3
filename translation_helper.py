# 韩中对照翻译函数
def translate_korean_title(korean_title: str) -> str:
    """将韩文商品名翻译为中文"""
    translations = {
        '선풍기': '风扇', '조끼': '背心', '작업복': '工作服',
        '냉방': '制冷', '냉풍': '冷风', '쿨': '冰爽',
        '쿨링': '冷却', '아이스': '冰', '얼음': '冰',
        '여름': '夏季', '작업용': '工作用', '현장': '工地',
        '낚시': '钓鱼', '등산': '登山', '배터리': '电池',
        '보조배터리': '充电宝', '포함': '包含', '증정': '赠送',
        '대용량': '大容量', '고출력': '高功率', '저소음': '低噪音',
        '4팬': '4风扇', '2팬': '2风扇', '팬': '风扇',
        '에어컨': '空调', '냉감': '冰爽', '통풍': '通风',
        '베스트': '背心', '반팔': '短袖', '긴팔': '长袖',
        '세트': '套装', '충전': '充电', '내일도착': '明日达',
        '당일배송': '当日配送', '특가': '特价', '할인': '折扣',
    }
    
    chinese = korean_title
    for korean, chinese_word in translations.items():
        chinese = chinese.replace(korean, chinese_word)
    
    if chinese == korean_title:
        return f"{korean_title} (需手动翻译)"
    return chinese

# 更新convert_to_bitable_fields函数中的商品名处理
# 在函数开头添加：
# korean_title = product_data.get('title', '')
# chinese_title = translate_korean_title(korean_title)
# bilingual_title = f"【韩文】{korean_title}\n【中文】{chinese_title}" if korean_title else chinese_title
# 然后使用 bilingual_title 作为 "商品名" 字段的值
