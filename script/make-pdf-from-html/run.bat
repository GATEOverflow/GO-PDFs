@echo off
setlocal

echo Running: 
echo %MLC_RUN_CMD%
echo.

if /I not "%MLC_FAKE_RUN%"=="yes" (
    call %MLC_RUN_CMD%
    if errorlevel 1 exit /b 1
)

endlocal
