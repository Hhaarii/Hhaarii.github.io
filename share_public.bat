@echo off
title Instant Public HTTPS Link - Robotics Portfolio
cd /d "%~dp0"
echo ================================================================
echo   Creating Instant Public HTTPS Link (Cloudflare Tunnel)
echo ================================================================
echo.
echo 1. Starting portfolio HTTP server in background...
start /b "PortfolioServer" python -m http.server 8080
timeout /t 2 >nul

echo.
echo 2. Launching Worldwide Public HTTPS Tunnel...
echo Copy the *.trycloudflare.com URL below to view anywhere on mobile/web:
echo ----------------------------------------------------------------
if exist "..\resume-auto-apply\bin\cloudflared.exe" (
    "..\resume-auto-apply\bin\cloudflared.exe" tunnel --url http://127.0.0.1:8080 --no-autoupdate
) else (
    echo Cloudflared binary not found. Please deploy via deploy_to_github.bat for permanent hosting.
)
pause
