@echo off
setlocal EnableDelayedExpansion


robocopy "C:\Users\SoundBooth\AppData\Local\Packages\Microsoft.Windows.ContentDeliveryManager_cw5n1h2txyewy\LocalState\Assets" "C:\Users\SoundBooth\Pictures\wallpapers" /s /min:100000

call "rename.bat"