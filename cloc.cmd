@echo off 
 if not [%1] == [] (
   IF not [%2] == [] (
    cloc_ex --exclude-ext=%1 --exclude-dir=node_modules,dist,v1,%2 ./
  ) else  (
    cloc_ex --exclude-ext=%1 --exclude-dir=node_modules,dist,v1 ./
  ) 
) else (
  cloc_ex --exclude-dir=node_modules,dist,v1 ./
)
