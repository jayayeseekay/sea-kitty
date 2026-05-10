@echo off
setlocal
REM Serve the public/ folder (the same folder that gets deployed to Cloudflare)
cd /d "%~dp0\public"

echo.
echo ============================================
echo   Sea Kitty - local server
echo ============================================
echo.
echo Your PC's local IP addresses (use one of these on the iPad):
echo.
for /f "tokens=2 delims=:" %%A in ('ipconfig ^| findstr /c:"IPv4 Address"') do (
    for /f "tokens=* delims= " %%B in ("%%A") do echo    http://%%B:8000/
)
echo.
echo On your iPad:
echo   1. Make sure the iPad is on the SAME Wi-Fi network as this PC.
echo   2. Open Safari.
echo   3. Type one of the addresses above into the address bar.
echo   4. If Windows asks to allow Python through the firewall, click "Allow".
echo.
echo Press Ctrl+C in this window to stop the server when finished.
echo ============================================
echo.

REM Try python launcher first (most common on modern Windows), then fall back to python
where py >nul 2>&1
if %errorlevel%==0 (
    py -3 -m http.server 8000
    goto :done
)

where python >nul 2>&1
if %errorlevel%==0 (
    python -m http.server 8000
    goto :done
)

echo.
echo ============================================
echo   Python is not installed on this PC.
echo ============================================
echo.
echo Please install Python from the Microsoft Store:
echo   1. Open the Microsoft Store
echo   2. Search for "Python 3"
echo   3. Install the latest version
echo   4. Then double-click this start-server.bat file again
echo.
echo (Alternatively, install from https://www.python.org/)
echo.
pause
goto :eof

:done
echo.
echo Server stopped.
pause
