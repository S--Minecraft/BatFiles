@echo off
:: �t�@�C���ꗗ���o��
:: �����̓}�C�N����mod�̈ʒu
::
setlocal ENABLEDELAYEDEXPANSION

set /p place="Minecraft��Mod�������Ă���t�@�C������͂��Ă�������:"

set mods="%place%\*.zip,%place%\*.jar"
set fname="%place%\modList.txt"

dir /a-d /b /s "%mods%" | sort > %fname%

copy %fname% org >nul
type nul >%fname%
for /f "tokens=1* delims=" %%a in ( org ) do (set line=%%a&& call :sub)

del org
goto :end

:sub
set l=!line:%place%\=!
echo %l%>>%fname%

:end
echo Successed!
exit /b