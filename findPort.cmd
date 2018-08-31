@echo off
netstat -ano | findstr %1
echo "To kill the process type taskkill /PID :TASKPID /F"