@echo off

echo.
echo 请以右键“以管理员身份运行”。

echo.
echo 正在激活Windows2016。。。
echo.
cscript.exe "%SYSTEMDRIVE%\windows\system32\slmgr.vbs" /ipk your system key
"%SYSTEMDRIVE%\windows\system32\slmgr.vbs" -skms your kms server ip
"%SYSTEMDRIVE%\windows\system32\slmgr.vbs" /ato
"%SYSTEMDRIVE%\windows\system32\slmgr.vbs" /dlv