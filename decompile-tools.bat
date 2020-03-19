@echo off
title Decompile Tools: By CrankySupertoon
echo.
echo What Do you want to decompile
echo #1 - Python 2
echo #2 - Python 3
echo.

:selection
choice /c 12 /n /m "Pick! [1,2]
if errorlevel 2 goto py3

:py2

echo Started Decompiling Python Files, this may take a while.
for /r %%f in (*.pyc) do ("bin/uncompyle6.exe" -o "%%~df%%~pf%%~nf.py" "%%~df%%~pf%%~nf.pyc")
echo All files decompiled.
goto kill

:py3
echo Started Decompiling Python Files, this may take a while.
for /r %%f in (*.pyc) do ("bin/decompyle3.exe" -o "%%~df%%~pf%%~nf.py" "%%~df%%~pf%%~nf.pyc")
echo All files decompiled.
goto kill

:kill
PAUSE
EXIT