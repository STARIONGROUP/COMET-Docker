@echo off

IF %1.==. GOTO VersionError
set version=%1

GOTO Setup

:VersionError
ECHO.
ECHO ERROR: No version was specified
ECHO.

GOTO End

:Setup

ECHO Building Local Image Version %version%

:Begin

ECHO.
ECHO Cleaning up...
ECHO.

REM cleanup previous if exists
docker rmi cdp4-test-database-community-edition:%version%
docker rmi stariongroup/cdp4-test-database-community-edition:%version%

docker rmi cdp4-database-community-edition:%version%
docker rmi stariongroup/cdp4-database-community-edition:%version%

ECHO.
ECHO Building images...
ECHO.

REM build and tag

set DOCKER_BUILDKIT=1

docker build -f cdp4-database-bare-community-edition\Dockerfile -t stariongroup/cdp4-test-database-community-edition:%version% .\cdp4-database-bare-community-edition

docker build -f cdp4-database-community-edition\Dockerfile -t stariongroup/cdp4-database-community-edition:%version% .\cdp4-database-community-edition

:End

ECHO.
ECHO Release %version% Completed
ECHO.