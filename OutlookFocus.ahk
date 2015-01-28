#Persistent
 
; ------ ------ CONFIGURATION SECTION ------ ------
SetTitleMatchMode 3
ProgWinTitle = ahk_class rctrl_renwnd32
CheckPeriod := 60000 * 15 ; 60000 = 1 minute
 
; ------ END OF CONFIGURATION SECTION ------ ------
 
 
WaitForOutlook:
 WinWaitActive ahk_class rctrl_renwnd32 , , , , 
 CurrWindow := WinExist("A")
 WinMinimize       ahk_id %CurrWindow%
        msgbox 4, Stay Focussed, Are you sure you want to read your mails?, 5
        ifmsgbox          Yes
 {
         WinRestore ahk_id %CurrWindow%
  ;restart watching after period above
  SetTimer, RestartWatching, %CheckPeriod%
 }
 else
 {
  WinMinimize ahk_id %CurrWindow%
  ;restart watching "immediately"
  SetTimer, RestartWatching, 100
 }
Return
 
RestartWatching:
 GoSub WaitForOutlook
return
