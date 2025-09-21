# Queens Networking Society - Deploy Script (PowerShell)
Write-Host "========================================" -ForegroundColor Green
Write-Host "Queens Networking Society - Deploy Script" -ForegroundColor Green
Write-Host "========================================" -ForegroundColor Green
Write-Host ""

# Check if Git is installed
Write-Host "Checking if Git is installed..." -ForegroundColor Yellow
try {
    $gitVersion = git --version
    Write-Host "Git is installed: $gitVersion" -ForegroundColor Green
} catch {
    Write-Host "ERROR: Git is not installed!" -ForegroundColor Red
    Write-Host "Please install Git from: https://git-scm.com/downloads" -ForegroundColor Yellow
    Write-Host "After installation, restart your terminal and run this script again." -ForegroundColor Yellow
    Read-Host "Press Enter to exit"
    exit 1
}

Write-Host ""
Write-Host "Git is installed. Proceeding with deployment..." -ForegroundColor Green
Write-Host ""

# Initialize Git repository
Write-Host "Initializing Git repository..." -ForegroundColor Yellow
git init

# Add all files to staging
Write-Host "Adding all files to staging..." -ForegroundColor Yellow
git add .

# Create initial commit
Write-Host "Creating initial commit..." -ForegroundColor Yellow
git commit -m "Initial commit: Queens Networking Society website with Lattice-inspired design"

# Add GitHub remote origin
Write-Host "Adding GitHub remote origin..." -ForegroundColor Yellow
git remote add origin https://github.com/TS-SL/qns.git

# Push to GitHub
Write-Host "Pushing to GitHub (this will trigger Netlify deployment)..." -ForegroundColor Yellow
git push -u origin main

Write-Host ""
Write-Host "========================================" -ForegroundColor Green
Write-Host "Deployment Complete!" -ForegroundColor Green
Write-Host "========================================" -ForegroundColor Green
Write-Host ""
Write-Host "Your website should now be deploying on Netlify." -ForegroundColor Cyan
Write-Host "Check your Netlify dashboard for deployment status." -ForegroundColor Cyan
Write-Host ""
Write-Host "Next steps:" -ForegroundColor Yellow
Write-Host "1. Set up Formspree for contact form" -ForegroundColor White
Write-Host "2. Test the live website" -ForegroundColor White
Write-Host "3. Share with your team" -ForegroundColor White
Write-Host ""
Read-Host "Press Enter to exit"
