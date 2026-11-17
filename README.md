<div align="center">
  <img src="assets/logo-mark.svg" width="76" alt="Plub logo" />
  <h1>Plub</h1>
  <p><strong>รวมลิงก์ที่ใช้บ่อยและ repo ล่าสุด</strong> — หน้าเดียวสำหรับเปิดใช้งานจริง</p>
  <p>
    <a href="https://plub-supanut.github.io/"><img src="https://img.shields.io/badge/live-plub--supanut.github.io-8B1E31?style=flat-square" alt="Live site"></a>
    <a href="https://github.com/Plub-Supanut/plub-supanut.github.io/commits/main"><img src="https://img.shields.io/github/last-commit/Plub-Supanut/plub-supanut.github.io?style=flat-square&label=last%20update" alt="Last commit"></a>
    <img src="https://img.shields.io/badge/static-no%20build-2f5d8a?style=flat-square" alt="Static, no build">
  </p>
  <p>
    <a href="https://plub-supanut.github.io/"><strong>เปิดเว็บ</strong></a>
    &nbsp;·&nbsp;
    <a href="https://github.com/Plub-Supanut/plub-standard/blob/main/GITHUB_STANDARD.md">Project standard</a>
    &nbsp;·&nbsp;
    <a href="https://github.com/Plub-Supanut">GitHub</a>
  </p>
</div>

---

## Overview

หน้าแรกส่วนตัวของ **Plub** — รวมลิงก์ที่เปิดบ่อย (ECG Field Guide, Elective Guide, ER & Trauma, MT5 AI Performance) และรายการ repo จาก GitHub ไว้หน้าเดียว

ตัวหน้าเว็บเป็น static ล้วน ไม่มี build step, ไม่มี dependency และไม่เก็บข้อมูลผู้ใช้ — เปิดจากมือถือหรือคอมได้ทันที

## Features

- **ลิงก์ที่ใช้บ่อย** — การ์ด 4 ใบ เปิดเว็บได้ตรง ไม่ต้องจำ URL
- **repo ล่าสุด** — ดึงจาก GitHub API ทุกครั้งที่เปิดหน้า กรอง fork/archived ออก
- **ลิงก์ชี้หน้าเว็บจริง** — repo ที่มี Pages จะพาไปหน้าเว็บผลลัพธ์ และมีลิงก์ "GitHub ↗" แยกไว้ให้ชัดเจน (ดูกติกาด้านล่าง)
- **ค้นหา repo** — พิมพ์ชื่อหรือคำอธิบายเพื่อกรองได้ทันที
- **อัปเดตล่าสุด** — แสดง 3 repo ที่เพิ่งอัปเดต ในแผงด้านขวา
- **เบาและเร็ว** — ไฟล์ HTML เดียว + assets ไม่มี framework
- **พื้นหลัง dynamic** — orbs เคลื่อนไหวช้า ๆ และขยับตามเมาส์ (หยุดอัตโนมัติเมื่อระบบตั้งค่า reduced motion)
- **รองรับ dark mode** — ตามการตั้งค่าระบบ

## กติกาลิงก์ (Links)

- **ลิงก์หลักชี้หน้าเว็บผลลัพธ์เสมอ** — ถ้า repo มีเว็บที่เปิดได้ การคลิกแถวคือเปิดเว็บจริง
- **GitHub เป็นลิงก์รองที่ติดป้าย** — มีป้าย "GitHub ↗" แยกชัดเจน ไม่แอบพาไป GitHub แทนเว็บ
- **repo ที่ไม่มีเว็บ** — แถวยังพาไป GitHub ได้ แต่ป้ายท้ายแถวจะเขียนว่า "GitHub" ไม่ใช่ "เปิดเว็บ"
- **ลำดับการหาลิงก์** — `homepage` ของ repo → Pages API (`/repos/{owner}/{repo}/pages` → `html_url`) → URL มาตรฐาน `https://<owner>.github.io/<repo>/` เมื่อ `has_pages` เป็น true (เพราะ Pages API ตอบ 404 ให้ request ที่ไม่ได้ล็อกอิน) → `html_url` ของ GitHub; ผลลัพธ์ถูก cache ใน `sessionStorage` ต่อ session
- **ลิงก์ภายนอก** — เปิดแท็บใหม่ด้วย `target="_blank" rel="noopener noreferrer"` และมี focus ring ให้เห็นชัดเมื่อใช้คีย์บอร์ด

### Link guard

workflow [`link-guard.yml`](.github/workflows/link-guard.yml) รันทุก push บน `main`, ทุกวันตาม cron และสั่งมือผ่าน `workflow_dispatch` โดยใช้ [`link-guard.sh`](.github/scripts/link-guard.sh) (bash + curl + jq):

- ไล่ทุก repo สาธารณะที่ไม่ใช่ fork และไม่ใช่ archived
- repo ที่เปิด Pages ต้องมี `homepage` เป็น URL `https://` ที่ตรงกับ Pages URL (เทียบโดยไม่คิด `/` ท้าย)
- ต้องเรียก URL นั้นแล้วได้ HTTP 200 (มี retry สำหรับ Pages ที่เพิ่ง deploy)
- ถ้าไม่ผ่าน จะฟ้องเป็นบรรทัดเดียว ระบุชื่อ repo, ค่าที่ควรเป็น และคำสั่งแก้ เช่น `gh repo edit Plub-Supanut/<repo> --homepage <url>`


## Screenshot

![หน้าแรก Plub](assets/preview.png)

## Project structure

```text
index.html      หน้าเว็บหลัก (HTML + CSS + JS)
ecg/            สำเนา ECG Field Guide สำหรับเปิดออนไลน์
assets/         รูป preview
404.html        หน้า not found
robots.txt      robots
.nojekyll       ปิด Jekyll บน GitHub Pages
.github/workflows/pages.yml        deploy ขึ้น GitHub Pages
.github/workflows/link-guard.yml   ตรวจ homepage ของ repo ที่เปิด Pages
.github/scripts/link-guard.sh      ตัวตรวจ (bash + curl + jq)
README.md       ไฟล์นี้
```

## Development

ไม่ต้องติดตั้งอะไร:

```bash
python -m http.server 8777
# เปิด http://127.0.0.1:8777
```

แก้ `index.html` ได้เลย — repo list มาจาก GitHub API จึงไม่ต้องแก้ไฟล์เมื่อมี repo ใหม่

## Standard

โปรเจกต์นี้ทำตาม [Plub-Supanut Project Standard](https://github.com/Plub-Supanut/plub-standard/blob/main/GITHUB_STANDARD.md) — README, metadata, release และ CI

## License

โค้ดของหน้านี้ © 2026 Plub-Supanut · เนื้อหาของแต่ละเว็บมีลิขสิทธิ์ตาม repo ต้นทาง
