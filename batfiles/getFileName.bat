@echo off
:: �t�@�C���ꗗ���o��
:: �����Ȃ��Ȃ�cmd��ŕ\��
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