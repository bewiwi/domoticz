@echo off
setlocal enableDelayedExpansion

if exist ..\.svn (
	echo Extracting SVN version from Subversion
	SubWCRev .. ..\svntemplate.txt ..\svnversion.h
) else (
	if exist ..\.git (
		echo Extracting SVN version from Git
		for /f "delims=" %%a in ('git log --grep="git-svn-id: " --max-count 1 ^| grep "git-svn-id" ^| cut -d"@" -f 2 ^| cut -d" " -f 1') do @set svnid=%%a
		echo The most recent Subversion revision ID is '!svnid!'
		powershell -Command "(Get-Content ..\svntemplate.txt) -replace '\$WCREV\$', '!svnid!' | Out-File -encoding ASCII ..\svnversion.h"
	) else (
		echo Working directory is not a Subversion nor Git directory
		exit /b 1
	)
)