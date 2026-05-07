@echo off
title Gojo Sentinel — One-Time Setup
echo ──────────────────────────────────────────────────
echo 🛡️  Gojo Sentinel — Initializing System...
echo ──────────────────────────────────────────────────
echo.

:: Check if Python is installed
python --version >nul 2>&1
if %ERRORLEVEL% NEQ 0 (
    echo ❌ ERROR: Python is not installed! 
    echo Please install Python from https://www.python.org/
    pause
    exit
)

echo 📦 1. Creating Virtual Environment (venv)...
python -m venv venv

echo 📚 2. Installing AI Models and Libraries...
.\venv\Scripts\python.exe -m pip install --upgrade pip
.\venv\Scripts\python.exe -m pip install -r requirements.txt

echo 🗄️ 3. Initializing Database...
.\venv\Scripts\python.exe -c "import app; app.init_db(); app.init_rules()"

echo.
echo ✅ SETUP COMPLETE!
echo You can now run the system using 'run_offline.bat'
echo.
pause
