﻿######################################################
##########            Kiosk Mode          ############
######################################################
#
# Runs chrome and other apps in full-screen mode 
# on predefined screens
# ----------------------------------------------------

$chromePath = 'C:\Program Files (x86)\Google\Chrome\Application\chrome.exe'
$chromeArguments = '--new-window --incognito'
# if Window not moved (especially on machine start) - try increaing the delay. 
$ChromeStartDelay = 5

Set-Location $PSScriptRoot
. .\HelperFunctions.ps1

# Kill all running instances
# &taskkill /im chrome* /F

Chrome-Kiosk 'http://www.countryfinancial.com' -MonitorNum 1 
Chrome-Kiosk 'http://www.amazon.com' -MonitorNum 2