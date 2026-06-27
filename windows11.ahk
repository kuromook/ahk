#Include %A_ScriptDir%\AutoHotkey-JSON\JSON.ahk

#Include %A_ScriptDir%\ime_control.ahk

#Include %A_ScriptDir%
#Include app.ahk

#Include %A_ScriptDir%\csp\csPaint.ahk
#Include %A_ScriptDir%\photoshop.ahk

AppsKey::#Tab

#F1::  Winset, Alwaysontop, , A


;-----------------------disable winkey/capslock-------------------------------------------------
*vkF0::Return
*CapsLock::Return

;kill windows key hotkey
#p::
Return
#u::
return
#lbutton::
Return

;kill windows key
LWin::return

;-----------------------misc-------------------------------------------------
;date string
#+d::
;:R*?:datestr::
FormatTime, CurrentDateTime,, yyyy/MM/dd
SendInput %CurrentDateTime%
return

;time string
#+t::
;:R*?:datestr::
FormatTime, CurrentDateTime,, hh:mm
SendInput %CurrentDateTime%
return

RCtrl::
send,!{/}
return

#q::
send,!{F4}
return
;-----------------------snapshot-------------------------------------------------
#F14::
send,{pause}
return
#+^4:
Send, ^!+{4}
Return
#4:
send,^!+{4}
Return



;--------------------------------------------------------------------------

;excute AutoHotKey reboot
#0::
Suspend,Permit
Run,C:\Program Files\AutoHotkey\AutoHotkey.exe C:\Users\sh1\tool\Autohotkey\windows11.ahk /r /f
return

Xbutton1::
send,{Enter}
return
;japanese input like mac OS
LAlt & Space::
CapsLock & Space::
Suspend,Permit
Send,{vkF3sc029}
return

;suspend
RAlt & Space::
AppsKey & Space::
Suspend
return

;quit ahk
RCtrl & Space::
ExitApp
Return


 ;--------------------------------------------------------------------------
sound(key, length){

  SoundBeep, key, length

}
