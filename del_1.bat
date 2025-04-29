@echo on
@setlocal

:DirExists

sdelete-v166.exe -p 3 -s 1\*

rmdir /q 1

IF EXIST ".\1\" (
    GOTO DirExists
)

