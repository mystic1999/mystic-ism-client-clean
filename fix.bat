@echo off
echo 🔍 Checking React/Vite entry structure...

REM Fix App.jsx
if exist src\App.jsx (
    findstr /C:"export default App" src\App.jsx >nul
    if errorlevel 1 (
        echo ⚠️  Adding missing export to App.jsx...
        echo.>>src\App.jsx
        echo export default App;>>src\App.jsx
    ) else (
        echo ✅ App.jsx export found.
    )
) else (
    echo ❌ src\App.jsx missing!
    pause
    exit /b
)

REM Fix main.jsx
if exist src\main.jsx (
    findstr /C:"ReactDOM.createRoot" src\main.jsx >nul
    if errorlevel 1 (
        echo ❌ main.jsx exists but has no ReactDOM.createRoot. Check manually.
    ) else (
        echo ✅ main.jsx looks good.
    )
) else (
    echo ❌ src\main.jsx missing!
    pause
    exit /b
)

REM Fix index.html
if exist public\index.html (
    findstr /C:"<div id=\"root\">" public\index.html >nul
    if errorlevel 1 (
        echo ⚠️  Inserting root div and script tag into index.html...
        echo ^<body^> > public\index.html
        echo     ^<div id="root"^>^</div^> >> public\index.html
        echo     ^<script type="module" src="/src/main.jsx"^>^</script^> >> public\index.html
        echo ^</body^> >> public\index.html
    ) else (
        echo ✅ index.html root div present.
    )
) else (
    echo ❌ public\index.html missing!
    pause
    exit /b
)

echo 🟢 All files checked or fixed.
pause