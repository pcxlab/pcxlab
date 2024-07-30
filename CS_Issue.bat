@echo off
setlocal

set "pattern=C:\Windows\System32\drivers\CrowdStrike\C-00000291*.sys"
set "found=0"

:check_and_delete
set "found=0"

for %%f in (%pattern%) do (
    set "found=1"
    echo Deleting file: %%f
    del "%%f"
    goto :check_and_delete
)

if %found%==1 (
    echo All files matching %pattern% have been deleted.
) else (
    echo No files matching %pattern% found.
)

endlocal
