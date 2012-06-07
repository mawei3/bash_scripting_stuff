

@echo off 
set "first_three=10.16.112."
echo Please enter Static IP Address Information 
echo Static IP Address: 
set /p Last_Oct=10.16.112.
set "Ip_Add=%first_three%%last_oct%"

echo "Setting Static IP Information" 
netsh interface ip set address "local area connection" static %IP_Add% 255.255.254.0 10.16.112.1 1 



ECHO Here are the new settings for %computername%: [ENTER TO CONTINUE] 
ipconfig
pause
netsh int ip show config

pause 
goto end 
:end
EXIT

Script END!