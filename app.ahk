#Include %A_ScriptDir%

#IfWinActive ahk_class Emacs
#c::
send,{ESC Down}{w}{ESC Up}
return

#v::
send,^{y}
return

;-------------------------------------------------------------
#IfWinActive ahk_class MozillaWindowClass
#v::
Send,{CtrlDown}{y}{CtrlUp}
return

#c::
Send,{AltDown}{w}{AltUp}
return
#IfWinActive
