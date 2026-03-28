#!/usr/bin/env python3
import urllib.request
import os

base_dir = "/root/.openclaw/workspace/cambridge-english-test/data/ket"
os.makedirs(base_dir, exist_ok=True)

files = [
    ("https://raw.githubusercontent.com/rayhanghost-del/openclaw-backup/master/test2.json", "test2.json"),
    ("https://raw.githubusercontent.com/rayhanghost-del/ket-test3/main/test3-reading.json", "test3-reading.json"),
    ("https://raw.githubusercontent.com/rayhanghost-del/ket-test3/main/test3-listening.json", "test3-listening.json"),
    ("https://raw.githubusercontent.com/rayhanghost-del/ket-test4-reading/main/test4-reading.json", "test4-reading.json"),
    ("https://raw.githubusercontent.com/rayhanghost-del/ket-test4-reading/main/test4-listening.json", "test4-listening.json"),
]

for url, filename in files:
    filepath = os.path.join(base_dir, filename)
    try:
        urllib.request.urlretrieve(url, filepath)
        size = os.path.getsize(filepath)
        print(f"✅ Downloaded {filename} ({size} bytes)")
    except Exception as e:
        print(f"❌ Failed to download {filename}: {e}")

print("\nDone!")
