@echo off

net session >nul 2>&1
if %errorLevel% == 0 (
    echo Checking if run as administrator: True
    echo.
    
    move "C:\ProgramFiles\Lightspeed Systems.off" "C:\Program Files\Lightspeed Systems"
    move "C:\ProgramData\Lightspeed Systems.off" "C:\ProgramData\Lightspeed Systems"
    move "C:\Windows\System32\drivers\LSSADrv.sys.off" "C:\Windows\System32\drivers\LSSADrv.sys"

    echo Files Enabled
    echo Type "exit" and Continue to Windows 10/11


) else (
    echo Checking if run as administrator: False
    echo.
    echo You need to be running this pro
)