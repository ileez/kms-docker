@echo off

echo.
echo 请以右键“以管理员身份运行”本激活程序。

echo.
echo 正在激活Office2013。。。
echo.

cscript.exe "%SYSTEMDRIVE%\Program Files\Microsoft Office\Office15\ospp.vbs" /sethst:your kms server ip
cscript.exe "%SYSTEMDRIVE%\Program Files\Microsoft Office\Office15\ospp.vbs" /act


echo 手动激活完成

