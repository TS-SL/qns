@echo off
echo ========================================
echo Queens Networking Society - Deploy Script
echo ========================================
echo.

echo Checking if Git is installed...
git --version >nul 2>&1
if %errorlevel% neq 0 (
    echo ERROR: Git is not installed!
    echo Please install Git from: https://git-scm.com/downloads
    echo After installation, restart your terminal and run this script again.
    pause
    exit /b 1
)

echo Git is installed. Proceeding with deployment...
echo.

echo Initializing Git repository...
git init

echo Adding all files to staging...
git add .

echo Creating initial commit...
git commit -m "Initial commit: Queens Networking Society website with Lattice-inspired design"

echo Adding GitHub remote origin...
git remote add origin https://github.com/TS-SL/qns.git

echo Pushing to GitHub (this will trigger Netlify deployment)...
git push -u origin main

echo.
echo ========================================
echo Deployment Complete!
echo ========================================
echo.
echo Your website should now be deploying on Netlify.
echo Check your Netlify dashboard for deployment status.
echo.
echo Next steps:
echo 1. Set up Formspree for contact form
echo 2. Test the live website
echo 3. Share with your team
echo.
pause
