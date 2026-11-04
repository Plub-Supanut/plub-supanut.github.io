# Plub's Products — product hub

หน้าแรกของผลิตภัณฑ์ทั้งหมดของ **Plub-Supanut** — รวมเว็บแอปการเรียนแพทย์และเครื่องมือเอเจนต์ไว้ที่เดียว เพื่อไม่ให้ต้องจำ URL แยก

**เว็บจริง:** https://plub-supanut.github.io/

## ผลิตภัณฑ์

| ผลิตภัณฑ์ | ประเภท | ลิงก์ |
| --- | --- | --- |
| ECG Field Guide | เว็บแอป (offline) | https://plub-supanut.github.io/ecg/ |
| Elective Guide | เว็บแอป | https://plub-supanut.github.io/elective-guide/ |
| ER & Trauma 2569 | เว็บแอป | https://plub-supanut.github.io/mdcu-er-trauma-2569/ |
| Verdict | เว็บแอป | https://plub-supanut.github.io/verdict/ |
| Hermes Bot Forge | Hermes plugin | https://github.com/Plub-Supanut/hermes-bot-forge |
| Feeder Agent | Python agent | https://github.com/Plub-Supanut/Feeder-Agent |

## โครงสร้าง

```text
index.html        หน้า hub (static, ไม่มี build step)
ecg/              สำเนา ECG Field Guide สำหรับเปิดออนไลน์
verdict/          สำเนา Verdict สำหรับเปิดออนไลน์
.nojekyll         ปิด Jekyll บน GitHub Pages
```

## พัฒนา

เป็น static site ล้วน เปิด `index.html` ได้โดยตรง หรือ:

```bash
python -m http.server 8777 --directory .
```

## มาตรฐาน

Repo นี้ทำตาม [GitHub Project Standard](https://github.com/Plub-Supanut/ecg-field-guide/blob/main/docs/GITHUB_STANDARD.md) — static site, ไม่มี dependency, ไม่เก็บข้อมูลผู้ใช้

## License

โค้ดของหน้านี้ © 2026 Plub-Supanut — เนื้อหาของแต่ละผลิตภัณฑ์มีลิขสิทธิ์ตาม repo ต้นทาง
