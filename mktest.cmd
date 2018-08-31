@echo off

SETLOCAL ENABLEEXTENSIONS ENABLEDELAYEDEXPANSION

for %%G IN (*.ts) DO (
  SET _temp=%%G
  SET _next=!_next! !_temp:.ts=.spec.ts!
  SET _final=!_next! 
)
touch !_final!

endlocal