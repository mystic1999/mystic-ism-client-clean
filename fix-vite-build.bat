@echo off
echo 🛠️ Installiere Vite als Dev-Abhängigkeit...
npm install --save-dev vite

echo 🔍 Saubere Installation aller Abhängigkeiten...
npm install

echo 🧼 Staging der Änderungen...
git add package.json package-lock.json

echo 📝 Commit...
git commit -m "🔧 Fix: Reinstalled Vite properly for Vercel build"

echo 🚀 Push...
git push origin main

echo ✅ Fertig! Jetzt kannst du in Vercel auf 'Redeploy' klicken.
pause
