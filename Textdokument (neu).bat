@echo off
echo Creating pages...

:: Create pages folder
mkdir src\pages

:: Create Home.jsx
echo import React from 'react';> src\pages\Home.jsx
echo.>> src\pages\Home.jsx
echo const Home = () => {>> src\pages\Home.jsx
echo   return <h1>🏠 Home Page</h1>;>> src\pages\Home.jsx
echo };>> src\pages\Home.jsx
echo.>> src\pages\Home.jsx
echo export default Home;>> src\pages\Home.jsx

:: Create Analytics.jsx
echo import React from 'react';> src\pages\Analytics.jsx
echo.>> src\pages\Analytics.jsx
echo const Analytics = () => {>> src\pages\Analytics.jsx
echo   return <h1>📊 Analytics Page</h1>;>> src\pages\Analytics.jsx
echo };>> src\pages\Analytics.jsx
echo.>> src\pages\Analytics.jsx
echo export default Analytics;>> src\pages\Analytics.jsx

:: Create Settings.jsx
echo import React from 'react';> src\pages\Settings.jsx
echo.>> src\pages\Settings.jsx
echo const Settings = () => {>> src\pages\Settings.jsx
echo   return <h1>⚙️ Settings Page</h1>;>> src\pages\Settings.jsx
echo };>> src\pages\Settings.jsx
echo.>> src\pages\Settings.jsx
echo export default Settings;>> src\pages\Settings.jsx

:: Set up Tailwind in index.css
echo @tailwind base;> src\index.css
echo @tailwind components;>> src\index.css
echo @tailwind utilities;>> src\index.css

:: Set up vite.config.js
echo import { defineConfig } from 'vite';> vite.config.js
echo import react from '@vitejs/plugin-react';>> vite.config.js
echo.>> vite.config.js
echo export default defineConfig({>> vite.config.js
echo   plugins: [react()],>> vite.config.js
echo });>> vite.config.js

echo Done ✅ You can now commit and push.
pause