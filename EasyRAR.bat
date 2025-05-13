@echo off
title RAR Password Cracker
chcp 65001 >nul

:: Check if 7-Zip is installed
if not exist "C:\Program Files\7-Zip\7z.exe" (
    echo [ERROR] 7-Zip is not installed in the default directory.
    echo Please install 7-Zip or edit the script to match the installed path.
    pause
    exit
)
cls
echo.
echo.
echo      ┌──────────────────────────────────────────────────────────────────┐
echo      │                                                                  │
echo      │   [95m███████╗ █████╗ ███████╗██╗   ██╗     [91m██████╗ [94m █████╗ [92m██████╗ [0m │
echo      │   [95m██╔════╝██╔══██╗██╔════╝╚██╗ ██╔╝     [91m██╔══██╗[94m██╔══██╗[92m██╔══██╗[0m │
echo      │   [95m█████╗  ███████║███████╗ ╚████╔╝█████╗[91m██████╔╝[94m███████║[92m██████╔╝[0m │
echo      │   [95m██╔══╝  ██╔══██║╚════██║  ╚██╔╝ ╚════╝[91m██╔══██╗[94m██╔══██║[92m██╔══██╗[0m │
echo      │   [95m███████╗██║  ██║███████║   ██║        [91m██║  ██║[94m██║  ██║[92m██║  ██║[0m │
echo      │   [95m╚══════╝╚═╝  ╚═╝╚══════╝   ╚═╝        [91m╚═╝  ╚═╝[94m╚═╝  ╚═╝[92m╚═╝  ╚═╝[0m │
echo      │                                                                  │
echo      └──────────────────────────────────────────────────────────────────┘[92m
echo.
                                                              
:: Ask user for archive path
echo.
set /p archive=Enter the path to the RAR archive: 
set "archive=%archive%"  :: Wrap in quotes if not already
if not exist %archive% (
    echo [ERROR] Archive not found: %archive%
    pause
    exit
)

:: Set wordlist path (must be in same folder as script)
set "wordlist=%~dp0Word_list.txt"

if not exist "%wordlist%" (
    echo [ERROR] Wordlist not found: %wordlist%
    pause
    exit
)

echo.
echo Starting password cracking...

:: Loop through wordlist
for /f %%a in (%wordlist%) do (
    set "pass=%%a"
    call :attempt
)

echo.
echo [INFO] Password not found in the wordlist.
pause
exit /b

:attempt
:: Try extracting the archive using the current password
"C:\Program Files\7-Zip\7z.exe" x -p%pass% %archive% -y >nul 2>&1


if %errorlevel% EQU 0 (
    echo.
    echo [SUCCESS] Password found
	echo     ┌───────────────┐
	echo        %pass%     
	echo     └───────────────┘  
	echo.
    pause
    exit
) else (
    echo Trying: %pass%
)
goto :eof
