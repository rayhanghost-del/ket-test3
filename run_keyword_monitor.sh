#!/bin/bash
# Coupang关键词监控自动化脚本
# 建议每周运行一次

# 配置
REPORT_DIR="/root/.openclaw/workspace/coupang_reports"
MONITOR_SCRIPT="/root/.openclaw/workspace/coupang_keyword_monitor.py"
FEISHU_WEBHOOK=""  # 如果需要飞书通知，填写webhook地址

# 创建报告目录
mkdir -p $REPORT_DIR

# 查找最新的广告报表（假设文件名包含日期）
# 根据实际情况修改查找逻辑
LATEST_REPORT=$(find /root/.openclaw/media/inbound -name "*.xlsx" -type f -mtime -7 | sort -t_ -k3 -r | head -1)

if [ -z "$LATEST_REPORT" ]; then
    echo "❌ 未找到最近的广告报表"
    exit 1
fi

echo "📂 找到最新报表: $LATEST_REPORT"

# 运行监控脚本
python3 $MONITOR_SCRIPT "$LATEST_REPORT" -o $REPORT_DIR

# 检查是否成功
if [ $? -eq 0 ]; then
    echo "✅ 监控报告生成成功"
    
    # 获取最新生成的报告
    LATEST_REPORT_FILE=$(ls -t $REPORT_DIR/Coupang关键词监控报告_*.xlsx | head -1)
    
    # 如果需要，可以在这里添加飞书通知逻辑
    # curl -X POST -H "Content-Type: application/json" \
    #   -d '{"msg_type":"text","content":{"text":"Coupang关键词监控报告已生成"}}' \
    #   $FEISHU_WEBHOOK
    
    echo "📊 报告位置: $LATEST_REPORT_FILE"
else
    echo "❌ 报告生成失败"
    exit 1
fi
