@echo off
SET installString=
SETLOCAL ENABLEDELAYEDEXPANSION
for %%G IN (%*) DO (
  SET installString=!installString!@types/%%G 
)
@echo on
npm install --save-dev %installString%
ENDLOCAL