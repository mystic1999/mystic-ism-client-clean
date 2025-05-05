@echo off
echo 🔧 Fixing vite.config.js...

setlocal EnableDelayedExpansion

set "FILE=vite.config.js"
if exist "%FILE%" (
    echo Checking %FILE%...

    findstr /C:"@vitejs/plugin-react" %FILE% >nul
    if errorlevel 1 (
        echo ⚠️  Plugin import fehlt – wird hinzugefügt...
        echo import react from '@vitejs/plugin-react';>tmp_config.js
        type %FILE% >> tmp_config.js
        move /Y tmp_config.js %FILE% >nul
    ) else (
        echo ✅ Plugin bereits vorhanden.
    )
) else (
    echo ❌ vite.config.js fehlt!
    pause
    exit /b
)

echo ✅ Fertig.
pause