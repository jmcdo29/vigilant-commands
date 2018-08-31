@echo off
for %%G IN (%*) DO (
  echo.> %%G
)
for %%H IN (%*) DO (
  code %%H
)
