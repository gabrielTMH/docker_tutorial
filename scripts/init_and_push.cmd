@echo off
REM init_and_push.cmd <user/repo> [public|private]

IF "%~1"=="" (
  echo Usage: %~nx0 user/repo [public|private]
  echo Example: %~nx0 gabe/my-repo public
  goto :eof
)

SET REPO=%~1
SET VISIBILITY=%~2
IF "%VISIBILITY%"=="" SET VISIBILITY=public

echo Initializing git repository...
git init

echo Adding files...
git add -A

echo Committing...
git commit -m "Initial commit" || echo "Nothing to commit or commit failed."


















echo Done. If the push succeeded, your code is now on GitHub.gh repo create %REPO% --%VISIBILITY% --source=. --remote=origin --pushecho Creating GitHub repository %REPO% (visibility=%VISIBILITY%) and pushing...)  goto :eof  echo You are not authenticated with GitHub. Run: gh auth loginIF ERRORLEVEL 1 (gh auth status >nul 2>&1echo Checking gh authentication...)  goto :eof  echo GitHub CLI (gh) not found. Install it from https://cli.github.com/ and run 'gh auth login'.IF ERRORLEVEL 1 (nwhere gh >nul 2>&1