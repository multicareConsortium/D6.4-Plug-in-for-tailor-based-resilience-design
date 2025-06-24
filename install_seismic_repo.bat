@echo off
REM Seismic Resilience Plug-in Installation Script

REM Check for Git
where git >nul 2>nul
if errorlevel 1 (
    echo Git is not installed or not in PATH. Please install Git and try again.
    exit /b 1
)

REM Check for Python
where python >nul 2>nul
if errorlevel 1 (
    echo Python is not installed or not in PATH. Please install Python 3.12.0 or later and try again.
    exit /b 1
)

REM Clone the repository
if not exist "preslam-ops-multicare" (
    git clone https://github.com/ChimieleCode/preslam-ops-multicare.git
) else (
    echo Repository already exists. Skipping clone.
)

cd preslam-ops-multicare

REM Create virtual environment
if not exist ".venv" (
    python -m venv .venv
) else (
    echo Virtual environment already exists. Skipping creation.
)

REM Activate virtual environment
call .venv\Scripts\activate

REM Install dependencies
python -m pip install --upgrade pip
pip install -r requirements.txt

echo.
echo Installation complete.
echo Open Rhino, launch Grasshopper, and load D6.4_framework.gh from this repository.
pause
