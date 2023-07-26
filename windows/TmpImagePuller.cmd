::Pulls temporary image files from where windows stores them. Such as the default lock screen "Spotlight".
echo %USERNAME% fetching windows tmp images
timeout /t 2
@echo off
:delf
echo y | del temp
:makf
echo y | rmdir temp /s
mkdir temp
xcopy C:\Users\%USERNAME%\AppData\Local\Packages\Microsoft.Windows.ContentDeliveryManager_cw5n1h2txyewy\LocalState\Assets\* .\temp
cd .\temp
ren * *.png
timeout /t 10

