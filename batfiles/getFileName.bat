@echo off
:: ファイル一覧を出力
:: 引数なしならcmd上で表示
::

:start
if "%1" =="" (
    goto :cmd
) else (
    goto :out
)

:cmd
dir /a-d /b
pause
goto :finish

:out
dir /a-d /b > %1
echo Successed!
goto :finish

:finish
exit /B