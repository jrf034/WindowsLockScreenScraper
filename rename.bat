@echo off
setlocal EnableDelayedExpansion

set Num=1
set ReNum=1

for /r %%a in (*) do @if "%%~xa" neq ".bat" (
	echo %%a
	ren "%%a" "tmp!Num!.jpg"
	set /a Num+=1
)

for /r %%a in (*) do @if "%%~xa" neq ".bat" (
	echo %%a
	ren "%%a" "img!ReNum!.jpg"
	set /a ReNum+=1
)