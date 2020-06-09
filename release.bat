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

ECHO Releasing Version %version%

set dry=false

IF %2.==. GOTO Begin
IF %2==dry GOTO Dry

:Dry

ECHO.
ECHO Performing dry run...
ECHO.

set dry=true

:Begin

ECHO.
ECHO Cleaning up...
ECHO.

REM cleanup previous if exists
docker rmi cdp4-test-database-community-edition:%version%
docker rmi rheagroup/cdp4-test-database-community-edition:%version%

docker rmi cdp4-database-community-edition:%version%
docker rmi rheagroup/cdp4-database-community-edition:%version%

REM remove local latest if exists
docker rmi  cdp4-test-database-community-edition:latest
docker rmi  rheagroup/cdp4-test-database-community-edition:latest

docker rmi  cdp4-database-community-edition:latest
docker rmi  rheagroup/cdp4-database-community-edition:latest

ECHO.
ECHO Building images...
ECHO.

REM build and tag
docker build -f cdp4-database-bare-community-edition\Dockerfile -t cdp4-test-database-community-edition:%version% -t cdp4-test-database-community-edition:latest .\cdp4-database-bare-community-edition
docker tag cdp4-test-database-community-edition:%version% rheagroup/cdp4-test-database-community-edition:%version%
docker tag cdp4-test-database-community-edition:latest rheagroup/cdp4-test-database-community-edition:latest

docker build -f cdp4-database-community-edition\Dockerfile -t cdp4-database-community-edition:%version% -t cdp4-database-community-edition:latest .\cdp4-database-community-edition
docker tag cdp4-database-community-edition:%version% rheagroup/cdp4-database-community-edition:%version%
docker tag cdp4-database-community-edition:latest rheagroup/cdp4-database-community-edition:latest

IF %dry% equ true GOTO End

ECHO.
ECHO Pushing...
ECHO.

REM push
docker push rheagroup/cdp4-test-database-community-edition:%version%
docker push rheagroup/cdp4-test-database-community-edition:latest

docker push rheagroup/cdp4-database-community-edition:%version%
docker push rheagroup/cdp4-database-community-edition:latest

:End

ECHO.
ECHO Release %version% Completed
ECHO.