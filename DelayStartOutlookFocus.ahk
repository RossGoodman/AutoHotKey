#Persistent
 
; ------ ------ CONFIGURATION SECTION ------ ------
DelayPeriod := 60000 * 15 ; 60000 = 1 minute
 
; ------ END OF CONFIGURATION SECTION ------ ------
 
SetTimer, StartWatching, %DelayPeriod%
return
 
 
StartWatching:
 run C:\RGApps\AHK-RG\OutlookFocus.ahk
 ExitApp
return
