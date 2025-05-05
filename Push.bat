@echo off
:: Name: push-client-vercel.bat
:: Zweck: Client-Ordner initialisieren & auf GitHub pushen

set REPO=https://github.com/mystic1999/mystic-ism-client-clean.git
set DIR=C:\Users\dubin\Desktop\mystic-ism-client

cd /d "%DIR%"

echo 🔁 Initialisiere Git...
git init

echo 🔗 Setze Remote auf: %REPO%
git remote remove origin 2>nul
git remote add origin %REPO%

echo 🔄 Wechsel zu Branch main...
git checkout -B main

echo ✅ Dateien hinzufügen...
git add .

echo 💬 Commit...
git commit -m "🚀 Push Client UI to GitHub for Vercel"

echo ⬆️ Push nach GitHub...
git push -u origin main --force

pause