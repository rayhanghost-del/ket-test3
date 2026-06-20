#!/bin/bash
# GitHub 备份脚本 - 用于定时任务执行

set -e

WORKSPACE_DIR="/root/.openclaw/workspace"
BACKUP_DIR="$WORKSPACE_DIR/openclaw-backup"
BACKUP_LOG="$WORKSPACE_DIR/backup_status_$(date +%Y%m%d_%H%M).md"

echo "开始 GitHub 备份任务..."
echo "时间: $(date)"

# 检查备份目录是否存在
if [ ! -d "$BACKUP_DIR" ]; then
    echo "错误: 备份目录不存在: $BACKUP_DIR"
    exit 1
fi

# 进入备份目录
cd "$BACKUP_DIR"

# 1. 确保 remote 配置正确
if [ -n "$GITHUB_TOKEN" ]; then
    REMOTE_URL="https://${GITHUB_TOKEN}@github.com/rayhanghost-del/openclaw-backup.git"
    git remote set-url origin "$REMOTE_URL"
else
    echo "警告: GITHUB_TOKEN 环境变量未设置，使用现有 remote URL"
fi

# 2. 获取最新变更
git fetch origin main 2>/dev/null || true

# 3. 从工作区同步文件到备份目录
echo "同步文件到备份目录..."

# 同步策略: 复制新增和修改的文件,但不删除备份目录中独有的文件
rsync -av --update \
    --exclude='.git' \
    --exclude='openclaw-backup' \
    --exclude='.venv' \
    --exclude='__pycache__' \
    --exclude='*.pyc' \
    --exclude='.clawhub' \
    --exclude='downloads' \
    --exclude='temp_audio' \
    --exclude='*.tmp' \
    --exclude='*.log' \
    --exclude='.kimi' \
    --exclude='.openclaw' \
    "$WORKSPACE_DIR/" "$BACKUP_DIR/"

# 4. 检查是否有变更
CHANGES=$(git status --short)

if [ -z "$CHANGES" ]; then
    echo "没有需要备份的新变更"
    # 创建空状态报告
    cat > "$BACKUP_LOG" << EOF
# GitHub 备份状态报告

**备份时间**: $(date '+%Y-%m-%d %H:%M') (Asia/Shanghai)  
**任务ID**: weekly-github-backup (9aeee88c-37bd-433e-9078-3509f86137d7)  
**状态**: ⚪ 无变更

## 执行摘要

本次备份检查未发现新增或修改的文件。
备份仓库保持最新状态。

---
*自动生成的备份报告*
EOF
    exit 0
fi

echo "检测到变更:"
echo "$CHANGES"

# 5. 添加所有变更
git add -A

# 6. 提交变更
COMMIT_MSG="Weekly backup: $(date '+%Y-%m-%d %H:%M')

变更文件:
$CHANGES"

git commit -m "$COMMIT_MSG" || true

# 7. 推送到 GitHub
if git push origin master; then
    COMMIT_HASH=$(git rev-parse --short HEAD)
    FILES_CHANGED=$(echo "$CHANGES" | wc -l)
    
    echo "备份成功! 提交哈希: $COMMIT_HASH"
    
    # 生成成功报告
    cat > "$BACKUP_LOG" << EOF
# GitHub 备份状态报告

**备份时间**: $(date '+%Y-%m-%d %H:%M') (Asia/Shanghai)  
**任务ID**: weekly-github-backup (9aeee88c-37bd-433e-9078-3509f86137d7)  
**状态**: ✅ 成功

## 执行摘要

| 项目 | 详情 |
|------|------|
| 远程仓库 | github.com/rayhanghost-del/openclaw-backup.git |
| 分支 | main |
| 提交数 | $FILES_CHANGED files changed |
| 提交哈希 | $COMMIT_HASH |

## 变更文件列表

\`\`\`
$CHANGES
\`\`\`

## 备份结果

✅ 本地提交成功  
✅ 推送至 GitHub 成功  

---
*自动生成的备份报告*
EOF
else
    echo "推送失败!"
    
    # 生成失败报告
    cat > "$BACKUP_LOG" << EOF
# GitHub 备份状态报告

**备份时间**: $(date '+%Y-%m-%d %H:%M') (Asia/Shanghai)  
**任务ID**: weekly-github-backup (9aeee88c-37bd-433e-9078-3509f86137d7)  
**状态**: ❌ 失败

## 错误信息

推送至 GitHub 失败，请检查网络连接或仓库权限。

## 本地变更

\`\`\`
$CHANGES
\`\`\`

---
*自动生成的备份报告*
EOF
    exit 1
fi

echo "备份任务完成"
