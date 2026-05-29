#!/bin/bash

# 🚀 StegoForge — Automated GitHub Setup Script
# استخدم: bash setup.sh

echo "======================================"
echo "🔐 StegoForge GitHub Setup"
echo "======================================"
echo ""

# Get user input
read -p "📝 أدخل اسم GitHub: " github_user
read -p "📧 أدخل بريدك الإلكتروني: " github_email
read -p "🔑 أدخل Personal Access Token (من GitHub Settings): " github_token

# Configure Git
echo ""
echo "⚙️  جاري إعداد Git..."
git config --global user.name "HUSSEIN AMMAR"
git config --global user.email "$github_email"

# Initialize repo
echo "📂 جاري بدء Repository..."
git init

# Add files
echo "📄 جاري إضافة الملفات..."
git add .

# First commit
echo "💾 جاري أول commit..."
git commit -m "Initial commit: StegoForge v1.0 - Digital Forensics & Steganography Toolkit by HUSSEIN AMMAR"

# Add remote
echo "🌐 جاري ربط GitHub..."
git remote add origin "https://${github_user}:${github_token}@github.com/${github_user}/stegoforge.git"

# Set branch
git branch -M main

# Push to GitHub
echo "🚀 جاري رفع الملفات..."
git push -u origin main

echo ""
echo "======================================"
echo "✅ تم الرفع بنجاح!"
echo "======================================"
echo ""
echo "📍 رابط مشروعك:"
echo "https://github.com/${github_user}/stegoforge"
echo ""
echo "🎉 مبروك! المشروع الآن على الإنترنت!"
