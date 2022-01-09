#Include %A_ScriptDir%\_Struct\sizeof.ahk
#Include %A_ScriptDir%\_Struct\_Struct.ahk
#Include %A_ScriptDir%\_Struct\Struct.ahk
#Include %A_ScriptDir%\AutoHotkey-JSON\JSON.ahk
#Include <remoteBuf>

#Include %A_ScriptDir%\TT\TT.ahk
#Include %A_ScriptDir%\IME\IME.ahk

#Include %A_ScriptDir%
#Include app.ahk

#Include %A_ScriptDir%\csp\csPaint.ahk
#Include %A_ScriptDir%\photoshop.ahk

AppsKey::#Tab

#F1::  Winset, Alwaysontop, , A

;-----------------------disable winkey/capslock-------------------------------------------------
vkF0::Return
Shift & vk14::Return

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
Run,C:\Program Files\AutoHotkey\AutoHotkey.exe C:\tool\Autohotkey\windows10.ahk /r /f
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
