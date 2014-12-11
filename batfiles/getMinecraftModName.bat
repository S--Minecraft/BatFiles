@echo off
:: ファイル一覧を出力
:: 引数はマイクラのmodの位置
::
setlocal ENABLEDELAYEDEXPANSION

set /p place="MinecraftのModが入っているファイルを入力してください:"

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