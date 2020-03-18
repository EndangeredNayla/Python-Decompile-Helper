@echo off
for /r %%f in (*.pyc) do ("uncompyle6.exe" -o "%%~df%%~pf%%~nf.py" "%%~df%%~pf%%~nf.pyc")
pause
exit