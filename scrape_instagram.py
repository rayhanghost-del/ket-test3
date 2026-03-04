# Instagram 韩系内容抓取脚本
import time
import json
from playwright.sync_api import sync_playwright

# 目标账号和标签
ACCOUNTS = [
    "todayhouse",
    "_home_",
    "homestyling_kr"
]

HASHTAGS = [
    "한국인테리어",  # 韩国家居
    "홈스타일링",   # 家居风格
    "요가",        # 瑜伽
    "홈트레이닝"   # 居家健身
]

results = {
    "accounts": {},
    "hashtags": {},
    "images": [],
    "captions": []
}

def scrape_instagram():
    with sync_playwright() as p:
        # 启动浏览器
        browser = p.chromium.launch(headless=True)
        context = browser.new_context(
            user_agent="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36"
        )
        page = context.new_page()
        
        # 抓取账号
        for account in ACCOUNTS:
            print(f"正在抓取账号: @{account}")
            try:
                page.goto(f"https://www.instagram.com/{account}/", timeout=30000)
                time.sleep(5)
                
                # 获取帖子图片
                images = page.query_selector_all('img[srcset]')
                account_images = []
                for img in images[:12]:  # 限制数量
                    src = img.get_attribute('src')
                    alt = img.get_attribute('alt') or ""
                    if src:
                        account_images.append({"url": src, "caption": alt[:200]})
                        results["images"].append(src)
                        if alt:
                            results["captions"].append(alt[:200])
                
                results["accounts"][account] = {
                    "image_count": len(account_images),
                    "images": account_images
                }
                print(f"  成功抓取 {len(account_images)} 张图片")
                
            except Exception as e:
                print(f"  抓取失败: {e}")
            
            time.sleep(8)  # 间隔8秒
        
        # 抓取标签
        for tag in HASHTAGS:
            print(f"正在抓取标签: #{tag}")
            try:
                page.goto(f"https://www.instagram.com/explore/tags/{tag}/", timeout=30000)
                time.sleep(5)
                
                images = page.query_selector_all('img[srcset]')
                tag_images = []
                for img in images[:12]:
                    src = img.get_attribute('src')
                    alt = img.get_attribute('alt') or ""
                    if src:
                        tag_images.append({"url": src, "caption": alt[:200]})
                        results["images"].append(src)
                        if alt:
                            results["captions"].append(alt[:200])
                
                results["hashtags"][tag] = {
                    "image_count": len(tag_images),
                    "images": tag_images
                }
                print(f"  成功抓取 {len(tag_images)} 张图片")
                
            except Exception as e:
                print(f"  抓取失败: {e}")
            
            time.sleep(8)
        
        browser.close()
        
        # 保存结果
        with open('/root/.openclaw/workspace/instagram_raw_data.json', 'w', encoding='utf-8') as f:
            json.dump(results, f, ensure_ascii=False, indent=2)
        
        print(f"\n抓取完成！")
        print(f"总图片数: {len(results['images'])}")
        print(f"配文数: {len(results['captions'])}")
        
        return results

if __name__ == "__main__":
    scrape_instagram()
