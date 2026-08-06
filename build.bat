@echo off
setlocal

set PRESET=%~1

if "%PRESET%"=="" set PRESET=debug

if /I "%PRESET%"=="debug" (
    set PRESET=debug
) else if /I "%PRESET%"=="release" (
    set PRESET=release
) else if /I "%PRESET%"=="asan" (
    set PRESET=asan
) else (
    echo Usage: build.bat [debug^|release^|asan]
    exit /b 2
)

if "%VCPKG_ROOT%"=="" (
    echo.
    echo Error: VCPKG_ROOT is not set.
    echo.
    echo Example:
    echo setx VCPKG_ROOT C:\Development\vcpkg
    exit /b 1
)

cmake --preset %PRESET%
if errorlevel 1 exit /b %errorlevel%

cmake --build --preset %PRESET%
if errorlevel 1 exit /b %errorlevel%

copy /Y build\%PRESET:~0,1%%PRESET:~1,7%\compile_commands.json compile_commands.json >nul

echo.
echo Build completed successfully.