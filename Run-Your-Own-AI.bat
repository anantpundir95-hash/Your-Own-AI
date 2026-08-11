@echo off
setlocal
cd /d "%~dp0"
set "PATH=C:\msys64\ucrt64\bin;%PATH%"

if not exist "db.exe" (
    echo The AI server has not been compiled yet.
    echo Please run this launcher again after setup finishes.
    pause
    exit /b 1
)

echo Starting Your Own AI VectorDB...
start "Your Own AI Server" cmd /k "db.exe"
timeout /t 3 /nobreak >nul
start "" "http://localhost:8080"
