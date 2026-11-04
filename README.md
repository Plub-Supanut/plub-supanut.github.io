# Plub — รวมลิงก์

รวมลิงก์ที่ใช้บ่อยและ repo ของ Plub-Supanut ไว้หน้าเดียว

**เว็บจริง:** https://plub-supanut.github.io/

## ลิงก์

| เว็บ | ลิงก์ |
| --- | --- |
| ECG Field Guide | https://plub-supanut.github.io/ecg/ |
| Elective Guide | https://plub-supanut.github.io/elective-guide/ |
| ER & Trauma 2569 | https://plub-supanut.github.io/mdcu-er-trauma-2569/ |
| Verdict | https://plub-supanut.github.io/verdict/ |

repo ที่เป็นสาธารณะจะขึ้นในหน้าเว็บอัตโนมัติจาก GitHub API — ไม่ต้องแก้ไฟล์เมื่อมี repo ใหม่
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

โค้ดของหน้านี้ © 2026 Plub-Supanut — เนื้อหาของแต่ละเว็บมีลิขสิทธิ์ตาม repo ต้นทาง
