@echo off
setlocal EnableDelayedExpansion


robocopy "C:\Users\%user%\AppData\Local\Packages\Microsoft.Windows.ContentDeliveryManager_cw5n1h2txyewy\LocalState\Assets" "C:\Users\%user%\Pictures\wallpapers" /s /min:100000

call "rename.bat"
