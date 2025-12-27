@echo off
echo ========================================
echo   PDF to Word Converter - Quick Start
echo ========================================
echo.

REM Check if virtual environment exists
if not exist ".venv" (
    echo [ERROR] Virtual environment not found!
    echo Please run: python -m venv .venv
    echo Then run this script again.
    pause
    exit /b 1
)

echo [1/3] Activating virtual environment...
call .venv\Scripts\activate.bat

echo [2/3] Installing/checking dependencies...
pip install -q -r requirements.txt

echo [3/3] Starting Flask application...
echo.
echo ========================================
echo   Application Starting...
echo   URL: http://localhost:5000
echo   Press Ctrl+C to stop
echo ========================================
echo.

python app.py

pause
