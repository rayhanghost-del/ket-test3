#!/bin/bash
# Coupang关键词监控脚本 - 一键安装和配置脚本

echo "=========================================="
echo "🚀 Coupang关键词监控脚本 - 安装向导"
echo "=========================================="
echo ""

# 颜色定义
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# 检查Python
echo "📋 步骤1: 检查Python环境..."
if command -v python3 &> /dev/null; then
    PYTHON_VERSION=$(python3 --version)
    echo -e "${GREEN}✅ Python已安装: $PYTHON_VERSION${NC}"
else
    echo -e "${RED}❌ Python未安装${NC}"
    echo "正在安装Python..."
    apt-get update && apt-get install -y python3 python3-pip
fi
echo ""

# 检查并安装依赖
echo "📋 步骤2: 安装依赖包..."
pip3 install pandas openpyxl numpy -q
if [ $? -eq 0 ]; then
    echo -e "${GREEN}✅ 依赖包安装成功${NC}"
else
    echo -e "${RED}❌ 依赖包安装失败${NC}"
    exit 1
fi
echo ""

# 创建工作目录
echo "📋 步骤3: 创建工作目录..."
WORK_DIR="$HOME/coupang_monitor"
mkdir -p "$WORK_DIR/reports"
echo -e "${GREEN}✅ 工作目录创建: $WORK_DIR${NC}"
echo ""

# 复制脚本
echo "📋 步骤4: 安装监控脚本..."
SCRIPT_SOURCE="/root/.openclaw/workspace/coupang_keyword_monitor.py"
if [ -f "$SCRIPT_SOURCE" ]; then
    cp "$SCRIPT_SOURCE" "$WORK_DIR/"
    chmod +x "$WORK_DIR/coupang_keyword_monitor.py"
    echo -e "${GREEN}✅ 脚本安装成功${NC}"
else
    echo -e "${RED}❌ 脚本源文件不存在${NC}"
    exit 1
fi
echo ""

# 测试脚本
echo "📋 步骤5: 测试脚本..."
python3 "$WORK_DIR/coupang_keyword_monitor.py" --help > /dev/null 2>&1
if [ $? -eq 0 ]; then
    echo -e "${GREEN}✅ 脚本运行正常${NC}"
else
    echo -e "${RED}❌ 脚本测试失败${NC}"
    exit 1
fi
echo ""

# 创建示例配置
echo "📋 步骤6: 创建示例配置..."
cat > "$WORK_DIR/config.env" << 'EOF'
# Coupang关键词监控配置

# 报表文件路径（修改为你的实际路径）
REPORT_FILE="/path/to/你的广告报表.xlsx"

# 报告输出目录
OUTPUT_DIR="$HOME/coupang_monitor/reports"

# 飞书Webhook（可选，用于通知）
# FEISHU_WEBHOOK="https://open.feishu.cn/open-apis/bot/v2/hook/xxxxxx"
EOF
echo -e "${GREEN}✅ 配置文件创建: $WORK_DIR/config.env${NC}"
echo ""

# 创建快捷命令
echo "📋 步骤7: 创建快捷命令..."
cat > "$WORK_DIR/run.sh" << EOF
#!/bin/bash
# 快速运行脚本

# 加载配置
source "$WORK_DIR/config.env"

# 运行监控
python3 "$WORK_DIR/coupang_keyword_monitor.py" "\$REPORT_FILE" -o "\$OUTPUT_DIR"
EOF
chmod +x "$WORK_DIR/run.sh"
echo -e "${GREEN}✅ 快捷命令创建: $WORK_DIR/run.sh${NC}"
echo ""

# 创建定时任务配置
echo "📋 步骤8: 创建定时任务配置..."
cat > "$WORK_DIR/setup_cron.sh" << 'EOF'
#!/bin/bash
# 设置定时任务

echo "正在设置定时任务..."
echo ""
echo "请选择运行频率:"
echo "1) 每周一早上9点"
echo "2) 每周一和周四早上9点"
echo "3) 每天凌晨3点"
echo "4) 自定义"
echo ""
read -p "请选择 [1-4]: " choice

WORK_DIR="$HOME/coupang_monitor"
CRON_CMD="/usr/bin/python3 $WORK_DIR/coupang_keyword_monitor.py"

case $choice in
    1)
        CRON_JOB="0 9 * * 1 $CRON_CMD \$HOME/coupang_reports -q"
        echo "设置: 每周一早上9点"
        ;;
    2)
        CRON_JOB="0 9 * * 1,4 $CRON_CMD \$HOME/coupang_reports -q"
        echo "设置: 每周一和周四早上9点"
        ;;
    3)
        CRON_JOB="0 3 * * * $CRON_CMD \$HOME/coupang_reports -q"
        echo "设置: 每天凌晨3点"
        ;;
    4)
        echo "请输入Cron表达式 (分 时 日 月 星期):"
        echo "例如: 0 9 * * 1 (每周一9点)"
        read -p "> " cron_expr
        CRON_JOB="$cron_expr $CRON_CMD \$HOME/coupang_reports -q"
        ;;
    *)
        echo "无效选择"
        exit 1
        ;;
esac

# 添加到crontab
(crontab -l 2>/dev/null; echo "$CRON_JOB") | crontab -
echo "✅ 定时任务已设置"
echo ""
echo "当前Crontab:"
crontab -l
EOF
chmod +x "$WORK_DIR/setup_cron.sh"
echo -e "${GREEN}✅ 定时任务配置脚本: $WORK_DIR/setup_cron.sh${NC}"
echo ""

# 安装完成
echo "=========================================="
echo -e "${GREEN}🎉 安装完成！${NC}"
echo "=========================================="
echo ""
echo "📁 安装位置: $WORK_DIR"
echo ""
echo "📋 下一步操作:"
echo ""
echo "1️⃣ 编辑配置文件:"
echo "   vim $WORK_DIR/config.env"
echo "   # 修改 REPORT_FILE 为你的报表路径"
echo ""
echo "2️⃣ 运行测试:"
echo "   $WORK_DIR/run.sh"
echo ""
echo "3️⃣ 设置定时任务:"
echo "   $WORK_DIR/setup_cron.sh"
echo ""
echo "📖 详细文档:"
echo "   /root/.openclaw/workspace/使用指南_超详细版.md"
echo ""
echo "=========================================="
