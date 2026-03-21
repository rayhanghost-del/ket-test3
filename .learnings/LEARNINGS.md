# Learnings Log

## [LRN-20250318-001] correction - 定时任务失败处理流程

**Logged**: 2026-03-18T07:35:00+08:00
**Priority**: high
**Status**: resolved
**Area**: workflow

### Summary
用户纠正：定时任务（学习日报推送）失败后，应该坚持重试并通知用户，而不是一次失败就放弃。

### Details
**问题行为**：
- 学习日报推送 cron 任务失败（AI服务过载）
- 我只简单通知用户"明天会自动重试"
- 没有坚持重试机制
- 没有在有条件时立即补救

**用户期望**：
1. 推送失败时**立即通知用户**（已完成）
2. 在**下一个 heartbeat 中重新尝试**，直到成功
3. 不能一次失败就放弃任务
4. 使用 self-improving-agent skill 记录纠正内容

### Suggested Action
修改 HEARTBEAT.md，添加定时任务失败后的重试逻辑：
- 检查近期失败的定时任务
- 如果失败原因是"AI服务过载"等临时性问题
- 在 heartbeat 中自动重试
- 成功后通知用户

### Metadata
- Source: user_feedback
- Related Files: HEARTBEAT.md, .learnings/LEARNINGS.md
- Tags: cron, retry, workflow
- Pattern-Key: workflow.cron_retry

---
