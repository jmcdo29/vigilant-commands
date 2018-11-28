@echo off
for /R %%G IN (*%1) DO (
  (echo "%%G" | FIND /I "node_modules" 1>NUL)
  ||
  (REN "%%G" "%%~nG.%2")
)
