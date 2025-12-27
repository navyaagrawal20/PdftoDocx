# Deployment Helper Script
# This script helps you deploy the application to Heroku

Write-Host "========================================" -ForegroundColor Cyan
Write-Host "  PDF to Word Converter - Deployment" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

# Check if Git is initialized
if (-not (Test-Path ".git")) {
    Write-Host "[1/6] Initializing Git repository..." -ForegroundColor Yellow
    git init
    Write-Host "✓ Git initialized" -ForegroundColor Green
} else {
    Write-Host "[1/6] Git already initialized" -ForegroundColor Green
}

Write-Host ""
Write-Host "[2/6] Adding files to Git..." -ForegroundColor Yellow
git add .
Write-Host "✓ Files added" -ForegroundColor Green

Write-Host ""
Write-Host "[3/6] Creating initial commit..." -ForegroundColor Yellow
git commit -m "Initial commit: PDF to Word Converter - Internship Assignment"
Write-Host "✓ Commit created" -ForegroundColor Green

Write-Host ""
Write-Host "[4/6] Checking Heroku CLI..." -ForegroundColor Yellow
try {
    $herokuVersion = heroku --version
    Write-Host "✓ Heroku CLI found: $herokuVersion" -ForegroundColor Green
} catch {
    Write-Host "✗ Heroku CLI not found!" -ForegroundColor Red
    Write-Host "Please install from: https://devcenter.heroku.com/articles/heroku-cli" -ForegroundColor Red
    exit 1
}

Write-Host ""
Write-Host "[5/6] Ready to create Heroku app!" -ForegroundColor Yellow
Write-Host ""
Write-Host "Next steps:" -ForegroundColor Cyan
Write-Host "1. Run: heroku login" -ForegroundColor White
Write-Host "2. Run: heroku create your-app-name" -ForegroundColor White
Write-Host "3. Run: git push heroku main" -ForegroundColor White
Write-Host "4. Run: heroku open" -ForegroundColor White
Write-Host ""

Write-Host "[6/6] Repository is ready for deployment!" -ForegroundColor Green
Write-Host ""
Write-Host "========================================" -ForegroundColor Cyan
Write-Host "  Alternative Deployment Options" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""
Write-Host "• Render:  https://render.com" -ForegroundColor White
Write-Host "• Railway: https://railway.app" -ForegroundColor White
Write-Host "• PythonAnywhere: https://www.pythonanywhere.com" -ForegroundColor White
Write-Host ""
Write-Host "For detailed instructions, see README.md" -ForegroundColor Yellow
Write-Host ""
