@echo off
setlocal

set "SCRIPT_DIR=%~dp0"
set "REPO_ROOT=%SCRIPT_DIR%.."
set "SOURCE_DIR=%REPO_ROOT%\skills\xizong-study-review"

if "%CODEX_HOME%"=="" (
  set "TARGET_ROOT=%USERPROFILE%\.codex\skills"
) else (
  set "TARGET_ROOT=%CODEX_HOME%\skills"
)

set "TARGET_DIR=%TARGET_ROOT%\xizong-study-review"

if not exist "%SOURCE_DIR%" (
  echo Error: skill source folder not found: %SOURCE_DIR%
  exit /b 1
)

if not exist "%TARGET_ROOT%" mkdir "%TARGET_ROOT%"
if exist "%TARGET_DIR%" rmdir /s /q "%TARGET_DIR%"
xcopy "%SOURCE_DIR%" "%TARGET_DIR%\" /e /i /y >nul

echo Installed xizong-study-review to:
echo %TARGET_DIR%
echo.
echo Restart Codex, then try:
echo Use the xizong-study-review skill. Please review my 西综 note as a professional learning tutor.

endlocal
