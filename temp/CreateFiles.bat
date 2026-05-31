@echo off
REM === נתיב בסיס לפרויקט (שנה לפי הצורך) ===
set "BASE_DIR=C:\rabbiyos-site"

REM יצירת תיקיית בסיס אם לא קיימת
if not exist "%BASE_DIR%" (
    mkdir "%BASE_DIR%"
)

REM מעבר לתיקיית הבסיס
cd /d "%BASE_DIR%"

REM === תיקיות סטטיות כלליות ===
mkdir css
mkdir js
mkdir img
mkdir fonts
mkdir vendor
mkdir vendor\bootstrap
mkdir vendor\jquery

REM === תיקיות בלוג בעברית ואנגלית ===
mkdir blog
mkdir en
mkdir en\blog

REM === קבצי HTML בעברית בשורש ===
type nul > index.html
type nul > weddings.html
type nul > barmitzvah.html
type nul > lectures.html
type nul > about.html
type nul > contact.html
type nul > books.html
type nul > publications.html
type nul > testimonials.html
type nul > faq.html
type nul > blog.html
type nul > privacy.html

REM === דוגמאות לפוסטים בבלוג בעברית ===
type nul > blog\chupa-equality-traditional.html
type nul > blog\prepare-bar-mitzvah-without-stress.html
type nul > blog\community-and-jewish-home.html

REM === קבצי HTML באנגלית בתיקיית /en ===
type nul > en\index.html
type nul > en\weddings.html
type nul > en\barmitzvah.html
type nul > en\lectures.html
type nul > en\about.html
type nul > en\contact.html
type nul > en\books.html
type nul > en\publications.html
type nul > en\testimonials.html
type nul > en\faq.html
type nul > en\blog.html
type nul > en\privacy.html

REM === דוגמאות לפוסטים באנגלית בתיקיית /en/blog ===
type nul > en\blog\inclusive-jewish-wedding-ceremony.html
type nul > en\blog\how-to-prepare-for-bar-mitzvah.html
type nul > en\blog\community-and-jewish-life.html

echo Folder structure and HTML files created under %BASE_DIR%
pause