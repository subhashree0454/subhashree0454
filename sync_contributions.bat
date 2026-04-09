@echo off
echo 🚀 Starting Daily Contribution Sync...

:: Generate a random message
set "messages[0]=🔥 maintain: daily contribution streak"
set "messages[1]=✨ chore: update activity log"
set "messages[2]=🚀 feat: automated pulse update"
set "messages[3]=💎 refactor: organic growth sync"
set "messages[4]=🌱 chore: cultivate contribution garden"
set "messages[5]=⚡ tweak: daily energy pulse"

set /a "rand=%random% %% 6"
call set "msg=%%messages[%rand%]%%"

:: Get current date and time
for /f "tokens=2 delims==" %%a in ('wmic os get localdatetime /value') do set "dt=%%a"
set "timestamp=%dt:~0,4%-%dt:~4,2%-%dt:~6,2% %dt:~8,2%:%dt:~10,2%:%dt:~12,2%"

:: Update log file
echo 📅 [%timestamp%] %msg% >> contribution_log.txt

:: Commit and push
git add contribution_log.txt
git commit -m "%msg% [skip ci]"
git push origin main

echo ✅ Contribution sync complete!
pause
