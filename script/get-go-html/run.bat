@echo off
setlocal enabledelayedexpansion

:: Function to exit if the last command failed
:exit_if_error
if %ERRORLEVEL% NEQ 0 exit /b %ERRORLEVEL%
exit /b 0

:: Function to run a command
:run
echo Running:
echo %1
echo.

if /I "%MLC_FAKE_RUN%" NEQ "yes" (
    call %1
    call :exit_if_error
)
exit /b 0

:: Add your run commands here...
call :run "%MLC_RUN_CMD%"

