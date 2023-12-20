@echo off

net session >nul 2>&1
if %errorLevel% == 0 (
    echo Checking if run as administrator: True
    echo.
    
    move "C:\ProgramFiles\Lightspeed Systems" "C:\Program Files\Lightspeed Systems.off"
    move "C:\ProgramData\Lightspeed Systems" "C:\ProgramData\Lightspeed Systems.off"
    move "C:\Windows\System32\drivers\LSSADrv.sys" "C:\Windows\System32\drivers\LSSADrv.sys.off"

    echo Files Disabled
    echo Type "exit" and Continue to Windows 10/11


) else (
    echo Checking if run as administrator: False
    echo.
    echo You need to run the program as administrator
)