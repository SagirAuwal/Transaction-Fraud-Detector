@echo off
title Gojo Sentinel Offline Server
echo ──────────────────────────────────────────────────
echo 🛡️  Gojo Sentinel — Starting Offline Server...
echo ──────────────────────────────────────────────────
echo.
.\venv\Scripts\python.exe app.py
if %ERRORLEVEL% NEQ 0 (
    echo.
    echo ❌ ERROR: The server failed to start. 
    echo Make sure you have installed the requirements.
    pause
)
pause
