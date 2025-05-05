@echo off
echo -----------------------------
echo ✅ Projekt Fix Assistant Start
echo -----------------------------

:: Step 1: Pages erstellen (falls sie fehlen)
echo 🔧 Überprüfe Pages...
IF NOT EXIST src\pages\Home.jsx (
    echo import React from ^'react^';> src\pages\Home.jsx
    echo const Home = () => ^{ return <h1>🏠 Home Page</h1>; };>> src\pages\Home.jsx
    echo export default Home;>> src\pages\Home.jsx
)
IF NOT EXIST src\pages\Analytics.jsx (
    echo import React from ^'react^';> src\pages\Analytics.jsx
    echo const Analytics = () => ^{ return <h1>📊 Analytics Page</h1>; };>> src\pages\Analytics.jsx
    echo export default Analytics;>> src\pages\Analytics.jsx
)
IF NOT EXIST src\pages\Settings.jsx (
    echo import React from ^'react^';> src\pages\Settings.jsx
    echo const Settings = () => ^{ return <h1>⚙️ Settings Page</h1>; };>> src\pages\Settings.jsx
    echo export default Settings;>> src\pages\Settings.jsx
)
echo ✅ Pages bereit.

:: Step 2: Tailwind Check
echo 🔍 Prüfe Tailwind in index.css...
findstr "@tailwind base" src\index.css >nul || echo @tailwind base;>> src\index.css
findstr "@tailwind components" src\index.css >nul || echo @tailwind components;>> src\index.css
findstr "@tailwind utilities" src\index.css >nul || echo @tailwind utilities;>> src\index.css
echo ✅ Tailwind-Anweisungen in index.css vorhanden.

:: Step 3: Vite Config prüfen
echo 🔍 Prüfe vite.config.js...
(
echo import { defineConfig } from 'vite';
echo import react from '@vitejs/plugin-react';
echo.
echo export default defineConfig({
echo     plugins: [react()],
echo });
) > vite.config.js
echo ✅ vite.config.js ersetzt.

:: Step 4: Öffne App.jsx für manuelle Kontrolle
echo 📂 Öffne App.jsx im Editor...
start notepad src\App.jsx

echo -----------------------------
echo ✅ Projektprüfung abgeschlossen.
echo Starte dev server mit: npm run dev
echo -----------------------------
pause