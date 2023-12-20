@echo off

net session >nul 2>&1
if %errorLevel% == 0 (
    echo Checking if run as administrator: True
    echo.
    

:: Turning off BitLocker (Replace 'manage-bde' commands with your specific BitLocker commands)
echo Turning off BitLocker...
manage-bde -off C:

:: Inform user about decryption process
echo The BitLocker decryption process may take a while. Please wait.

:: Creating local admin user
net user admin1 password1 /add
net localgroup administrators admin1 /add

:: Inform user about the new admin account
echo Created a local administrator account with username 'admin1' and password 'password1'.
echo Remember these credentials as they are necessary to boot into the command prompt in Advanced Startup.

:: Prompt user to restart into Advanced Startup
echo Please restart into Advanced Startup by holding Shift and clicking Restart until the Advanced Startup menu shows up.
pause
    

) else (
    echo Checking if run as administrator: False
    echo.
    echo You need to run the program as administrator
    pause >nul
)