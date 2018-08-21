@echo off
setlocal EnableDelayedExpansion

:Main
echo Pulling images from %LOCALAPPDATA%\Packages\Microsoft.Windows.ContentDeliveryManager_cw5n1h2txyewy\LocalState\Assets
echo Placing images into %~dp0Wallpapers

call :getPhotos
echo Reformatting all files in %~dp0Wallpapers. Proceed?
pause
call :reformat

python removeDouble.py %~dp0Wallpapers\
call :reformat
echo.
echo Images pulled, formatted, and filtered
pause
EXIT /B 0


:getPhotos
robocopy "%LOCALAPPDATA%\Packages\Microsoft.Windows.ContentDeliveryManager_cw5n1h2txyewy\LocalState\Assets" "%~dp0Wallpapers" /s /min:100000
EXIT /B 0


:reformat
SETLOCAL
set /A Num=1
set /A ReNum=1

for %%a in (%~dp0Wallpapers\*) do @if "%%~xa" neq ".bat" ( @if "%%~xa" neq ".py" (
	ren "%%a" "tmp!Num!.jpg"
	set /A Num+=1
))

for %%a in (%~dp0Wallpapers\*) do @if "%%~xa" neq ".bat" ( @if "%%~xa" neq ".py" (
	ren "%%a" "img!ReNum!.jpg"
	set /A ReNum+=1
))
EXIT /B 0