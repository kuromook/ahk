;make layers
Numpad0 & Numpad1::
send, ^!{F1}
Gosub, _csp_clipping
return 

Numpad0 & Numpad2::
send, ^!{F2}
Gosub, _csp_clipping
Return

Numpad0 & Numpad3::
send, ^!{F3}
Gosub, _csp_clipping
Return

Numpad0 & Numpad4::
send, ^!{F4}
Gosub, _csp_clipping
Return

Numpad0 & Numpad5::
send, ^!{F5}
Gosub, _csp_clipping
Return

Numpad0 & Numpad6::
send, ^!{F6}
Gosub, _csp_clipping
Return

Numpad0 & Numpad7::
send, ^!{F1}
Return

Numpad0 & Numpad8::
send, ^!{F2}
Return

Numpad0 & Numpad9::
send, ^!{F4}
Return


;create adjustment layer or filter
NumpadDot & Numpad1::
send, ^{Numpad1}
Gosub, _csp_clipping
return 

NumpadDot & Numpad2::
send, ^{Numpad2}
Gosub, _csp_clipping
Return

NumpadDot & Numpad3::
send, ^{Numpad3}
Gosub, _csp_clipping
Return

NumpadDot & Numpad4::
send, ^{Numpad4}
Gosub, _csp_clipping
Return

NumpadDot & Numpad5::
send, ^{Numpad5}
Gosub, _csp_clipping
Return

NumpadDot & Numpad6::
send, ^{Numpad6}
Gosub, _csp_clipping
Return

NumpadDot & Numpad7::
send, ^{Numpad7}
Gosub, _csp_clipping
Return

NumpadDot & Numpad8::
send, ^{Numpad8}
Gosub, _csp_clipping
Return

NumpadDot & Numpad9::
send, ^{Numpad9}
Return

NumpadDot & NumpadSub::
send, ^!+{F10}
Return

NumpadDot & NumpadAdd::
if buf_CSPFlow = 7
{
  send ^+{F3}
}
else{
send, ^!+{F11}
}
Return

NumpadDot & NumpadMult::
send, ^!{F10}
Return

NumpadDot & NumpadEnter::
NumpadDel & NumpadEnter::
send, !{Delete}
Return