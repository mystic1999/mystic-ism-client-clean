@echo off
setlocal

:: === Ordnerpfad zu deinem Projekt ===
cd /d "C:\Users\dubin\Desktop\mystic-ism-client"

:: === package.json Build-Script fixen ===
echo 🔧 Ersetze Build-Script in package.json...
powershell -Command "(Get-Content package.json) -replace '\"build\":\s*\".*?\"', '\"build\": \"node node_modules/vite/bin/vite.js build\"' | Set-Content package.json"

:: === Git push vorbereiten ===
echo 📦 Committing und pushen nach GitHub...
git add package.json
git commit -m "🔥 FIX: build command direct node call"
git push origin main

echo ✅ Fertig. Jetzt kannst du in Vercel 'Redeploy' klicken.
pause
