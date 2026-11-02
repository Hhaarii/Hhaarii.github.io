@echo off
title Deploy Portfolio to Public GitHub Pages
cd /d "%~dp0"
echo ================================================================
echo   Deploying Portfolio to Public GitHub Pages (https://hhaarii.github.io)
echo ================================================================
echo.
echo Step 1: Initializing Git repository...
if not exist .git (
    git init
    git branch -M main
)

echo.
echo Step 2: Staging portfolio files (HTML, 3D Models, CAD Renders, Resumes)...
git add .

echo.
echo Step 3: Creating commit...
git commit -m "feat: publish public interactive robotics portfolio"

echo.
echo ================================================================
echo TARGET REPOSITORY SELECTION:
echo.
echo Option A (Recommended): If you create 'Hhaarii.github.io' on GitHub,
echo          your portfolio will be live at: https://hhaarii.github.io
echo.
echo Option B: If you create 'portfolio' on GitHub,
echo          your portfolio will be live at: https://hhaarii.github.io/portfolio
echo ================================================================
echo.

set /p REPONAME="Enter repository name [Default: Hhaarii.github.io]: "
if "%REPONAME%"=="" set REPONAME=Hhaarii.github.io

git remote remove origin 2>nul
git remote add origin https://github.com/Hhaarii/%REPONAME%.git

echo.
echo Step 4: Pushing to GitHub (https://github.com/Hhaarii/%REPONAME%)...
git push -u origin main

echo.
echo ================================================================
echo   SUCCESS! If this is 'Hhaarii.github.io', your site is now live at:
echo   https://hhaarii.github.io
echo.
echo   (If using a different repo name, enable GitHub Pages in:
echo    Repo Settings -> Pages -> Source: 'Deploy from a branch' -> 'main' -> Save)
echo ================================================================
pause
