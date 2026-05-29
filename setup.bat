@echo off
REM 🚀 StegoForge — Automated GitHub Setup for Windows
REM استخدم: setup.bat

echo.
echo ======================================
echo 🔐 StegoForge GitHub Setup (Windows)
echo ======================================
echo.

REM Get user input
set /p github_user="📝 أدخل اسم GitHub: "
set /p github_email="📧 أدخل بريدك الإلكتروني: "
set /p github_token="🔑 أدخل Personal Access Token: "

REM Configure Git
echo.
echo ⚙️  جاري إعداد Git...
git config --global user.name "HUSSEIN AMMAR"
git config --global user.email "%github_email%"

REM Initialize repo
echo 📂 جاري بدء Repository...
git init

REM Add files
echo 📄 جاري إضافة الملفات...
git add .

REM First commit
echo 💾 جاري أول commit...
git commit -m "Initial commit: StegoForge v1.0 - Digital Forensics Toolkit by HUSSEIN AMMAR"

REM Add remote
echo 🌐 جاري ربط GitHub...
git remote add origin "https://%github_user%:%github_token%@github.com/%github_user%/stegoforge.git"

REM Set branch
git branch -M main

REM Push to GitHub
echo 🚀 جاري رفع الملفات...
git push -u origin main

echo.
echo ======================================
echo ✅ تم الرفع بنجاح!
echo ======================================
echo.
echo 📍 رابط مشروعك:
echo https://github.com/%github_user%/stegoforge
echo.
echo 🎉 مبروك! المشروع الآن على الإنترنت!
echo.
pause
