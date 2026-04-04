# TOOLS.md - Local Notes

Skills define _how_ tools work. This file is for _your_ specifics — the stuff that's unique to your setup.

## What Goes Here

Things like:

- Camera names and locations
- SSH hosts and aliases
- Preferred voices for TTS
- Speaker/room names
- Device nicknames
- Anything environment-specific

## Examples

```markdown
### Cameras

- living-room → Main area, 180° wide angle
- front-door → Entrance, motion-triggered

### SSH

- home-server → 192.168.1.100, user: admin

### TTS

- Preferred voice: "Nova" (warm, slightly British)
- Default speaker: Kitchen HomePod
```

## Why Separate?

Skills are shared. Your setup is yours. Keeping them apart means you can update skills without losing your notes, and share skills without leaking your infrastructure.

---

Add whatever helps you do your job. This is your cheat sheet.

## bb-browser 配置

- Chrome CDP 端口: 9222
- 配置文件: ~/.bb-browser/config.json
- 快捷命令: `bb` (alias for `bb-browser --port 9222`)

### 常用命令
```bash
bb status              # 查看状态
bb open <url>          # 打开网页
bb snapshot            # 获取页面快照
bb screenshot <path>   # 截图
bb click ref=0         # 点击元素
bb fill ref=1 "text"   # 填充输入框
```