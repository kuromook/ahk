 getDoubleKeyLine(){
  dbl := new DoubleKey()
  ; White w
  dbl.append( new Operation("Common", 16,"j", 1, "{9}", "key"))
  dbl.append( new Operation("white    ", 16,"i", 2, "{8}", "key"))
  dbl.append( new Operation("brush"   , 16,"m", 1, "{b}", "key"))
  dbl.append( new Operation("reverse "  , 16,"x", 2, "_csp_line_reverse_color", "sub"))

  ; Effect
  dbl.append( new Operation("Kabura", 11,"j", 1, "{z}", "key"))
  dbl.append( new Operation("white    ", 11,"m", 1, "_csp_line_kamiwhite", "sub"))
  dbl.append( new Operation("white    ", 11,"i", 2, "{8}", "key"))
  dbl.append( new Operation("reverse "  , 11,"x", 2, "_csp_line_detail", "sub"))

    ;mask
  dbl.append( new Operation("brush   ", 10,"j", 1, "{l}", "key"))
  dbl.append( new Operation("air brush"   , 10,"m", 2, "_csp_line_gradation_confirm", "sub"))
  dbl.append( new Operation("blur"   , 10,"m", 1, "_csp_line_gradation_tool", "sub"))
  dbl.append( new Operation("reverse "  , 10,"x", 2, "_csp_reverse_and_gradation", "sub"))


  ;Tone
  dbl.append( new Operation("Kabura", 9,"j", 1, "{p}", "key"))
  dbl.append( new Operation("Tone     ", 9,"m", 1, "{b}", "key"))
;  dbl.append( new Operation("Tone     ", 9,"m", 2, "csp_shadow_to_gradation", "sub"))

  dbl.append( new Operation("Control", 9,"i", 2, "{8}", "key"))
  dbl.append( new Operation("wanderace", 9,"n", 1, "_csp_line_curveErace", "sub"))
  dbl.append( new Operation("wanderace", 9,"n", 2, "_csp_line_curveFillDetail", "sub"))

  dbl.append( new Operation("reverse "  , 9,"x", 2, "_csp_line_detail", "sub"))

    ; fukidasi
  dbl.append( new Operation("white    ", 8,"j", 1, "_csp_fukidashi_line", "sub"))
  dbl.append( new Operation("white    ", 8,"i", 2, "{i}", "key"))
  dbl.append( new Operation("white    ", 8,"m", 1, "_csp_line_kamiwhite", "sub"))



  ; character Up flow
  dbl.append( new Operation("Control", 1,"j", 1, "{f}", "key"))
  dbl.append( new Operation("Control", 1,"i", 2, "{8}", "key"))


  ; default action (and without flow setting)
  dbl.append( new Operation("Pen"   , 0,"j", 1, "{f}", "key"))
  dbl.append( new Operation("wanderace", 0,"n", 1, "_csp_line_curveErace", "sub"))
  dbl.append( new Operation("wanderace", 0,"n", 2, "_csp_line_curveFillDetail", "sub"))

  dbl.append( new Operation("brush", 0,"m", 1, "{b}", "key"))
  dbl.append( new Operation("confirm", 0,"m", 2, "{F19}", "key"))
  dbl.append( new Operation("select curve", 0,"s", 1, "{a}", "key"))
  dbl.append( new Operation("Confirm", 0,"s", 2, "+{F17} ", "key"))
  dbl.append( new Operation("fill"  , 0,"i", 2, "{8}", "key"))
  dbl.append( new Operation("transparent"  , 0,"x", 1, "{x}", "key"))
  dbl.append( new Operation("reverse "  , 0,"x", 2, "_csp_change_ruler", "sub"))


  return dbl
}

_csp_change_ruler:
send,^{4}
send,{w}
return

_csp_toggle_sketch_view:
  if buf_cspsketch_transparency =1
  {
    send, ^+!{F11}
    buf_cspsketch_transparency:=0
  }
  else{
    send, ^+!{F12}
    buf_cspsketch_transparency:=1
  }
  return


, & .::
send, ^{8}
Return


+n::
dbl:=getDoubleKeyLine()
if A_TickCount < %ctrldoubleN%
{
  keys := dbl.byKey("n",buf_CSPFlow, 2)
  Gosub, _csPaintResetSubTool
  ctrldoubleN=0
}
else
{
    ctrldoubleN=%A_TickCount%
    ctrldoubleN+=400
    keys := dbl.byKey("n",buf_CSPFlow, 1)
}
return

+m::
dbl:=getDoubleKeyLine()
if A_TickCount < %ctrldoubleM%
{
  keys := dbl.byKey("m",buf_CSPFlow, 2)
  ctrldoubleM=0
}
else
{
    ctrldoubleM=%A_TickCount%
    ctrldoubleM+=400
    if !croquisFlag
    {
      keys := dbl.byKey("m",buf_CSPFlow, 1)
    }
    else
    {
      Send,{e}
    }
}
Return


+j::
if buf_csplinelayer =1
{
  buf_csplinelayer:=0
  send,!^+{F15}
  Return
}
dbl:=getDoubleKeyLine()
if A_TickCount < %ctrldoubleJ%
{
  keys := dbl.byKey("j",buf_CSPFlow, 2)

  Gosub, _csPaintResetSubTool
  ctrldoubleJ=0
}
else
{
    ctrldoubleJ=%A_TickCount%
    ctrldoubleJ+=400
    keys := dbl.byKey("j",buf_CSPFlow, 1)

}
return



!F14::
dbl:=getDoubleKeyLine()
if A_TickCount < %ctrldoubleS%
{
  ;keys := dbl.byKey("s",buf_CSPFlow, 2)

  Gosub, _csp_line_confirm
  ctrldoubleS=0
}
else
{
    ctrldoubleS=%A_TickCount%
    ctrldoubleS+=400
    Gosub, _csp_line_curve
    ;keys := dbl.byKey("s",buf_CSPFlow, 1)
}
return


;~XButton2::
_csp_line_pen:
send,{F3}
  send,{w}
return

~Xbutton2::
_csp_line_rotate:
if A_TickCount < %ctrldoubleTX%
{
  send,{F3}
  send,{w}
  ctrldoubleTX=0
}
else
{
    ctrldoubleTX=%A_TickCount%
    ctrldoubleTX+=400
    send,{Xbutton2}
}
return


_csp_line_detail:
if (_buf_CSP_line_bkflag)
{
  _cspflowFlag(_buf_CSP_line_bkflag)
dbl:=getDoubleKeyLine()
dbl.byKey("j",buf_CSPFlow, 1)
send,{w}
_buf_CSP_line_bkflag:=
}
else{
  _buf_CSP_line_bkflag :=buf_CSPFlow
  _cspflowSC("r")
  dbl:=getDoubleKeyLine()
  dbl.byKey("j",buf_CSPFlow, 1)
  send,{w}
}

Return

_csp_line_curve:
send,{a}
Return

_csp_line_crop:
send, +{F17}
return


_transform:
    Send,^{t}
    ctrldouble=0
Return

_csp_line_quickmask:
    Send,{w}
    Send,{F15}
Return

_csp_line_confirm:
  send,{Enter}
  send,^{d}
  return
_csp_line_reverse_color:
  send,{s}
  send,{w}
  Return
_csp_line_white:
  send,{s}
  send,{w}
  send,{8}
  return
_csp_line_kamiwhite:
  send,{i}
  send,{s}
  send,{w}
  Return
_csp_fukidashi_line:
 send,{f}
 send,{F1}
 send,{w}
 send,{5}
 return
_csp_reverse_and_gradation:
 send,{F15}
 gosub, _csp_line_gradation_tool
 Return

_csp_line_gradation_tool:
  if _buf_CSP_line_gradation{
    send, %_buf_CSP_line_gradation%
  }
  else{
    send,{y}
  }

  return


_csp_line_curveErace:
send,{e}
send,{x}
Return

_csp_line_curveFill:
send,{e}
send,{w}
Return

_csp_line_curveFillDetail:
send,{z}
send,{w}
Return

_csp_line_gradation_confirm:
  send,{F17}
  send,^{d}
  Gosub, _csp_line_kage
  Send,{x}
  return


_csp_skin_gradation:
  send,^{d}
  _cspflowSC("l")
  dbl:=getDoubleKeyLine()
  dbl.byKey("j",buf_CSPFlow, 1)
  Send,{w}
  return

_transform2nd:
  if(buf_CSPTransform==1){
    Send,+{Enter}
    Send,^{d}
    buf_CSPTransform:=0
  }else{
    Send,{7}
    buf_CSPTransform:=1
  }
return

+i::
dbl:=getDoubleKeyLine()
 if A_TickCount < %ctrldoubleI%
 {
  keys := dbl.byKey("i",buf_CSPFlow, 2)
    ctrldoubleI=0
 }
 else
 {
    ctrldoubleI=%A_TickCount%
    ctrldoubleI+=400
    Send,{w}
 }
return


+a::
if !SizeLockFlag or tempLineFlowbk
  Send,+{a}
return


+d::
if !SizeLockFlag or tempLineFlowbk
  Send,+{d}
return


+x::
dbl:=getDoubleKeyLine()
 if A_TickCount < %ctrldoubleI%
 {
  keys := dbl.byKey("x",buf_CSPFlow, 2)
    ctrldoubleI=0
 }
 else
 {
    ctrldoubleI=%A_TickCount%
    ctrldoubleI+=400
    keys := dbl.byKey("x",buf_CSPFlow, 1)
 }
return



o::
 if A_TickCount < %ctrldoubleO%
 {
    Send,{i}                        ;
    ctrldoubleO=0

 }
 else
 {
    ctrldoubleO=%A_TickCount%
    ctrldoubleO+=400
    Send,{o}
 }
return




; Shadow
:*:13::
Gosub, _csp_line_kage
Send,^!{F1}
Send,+{F13}
Send,^!{F2}
Send,^{h}
  return

csp_line_ao:
Send,+{F13}
Send,^!{F10}
Send,^{h}
send, {F19}
send, {F1}
buf_csplinelayer:=1
return

:*:14::
Gosub, _csp_line_detail
Send,^!{F1}
gosub, csp_line_ao
  return

:*:15::
Gosub, _csp_line_kage
Send,^!{F7}
Return
  return


:*:23::
Gosub, _csp_line_kage
Send,^!{F3}
Send,+{F13}
Send,^!{F4}
Send,^{h}
  return

:*:24::
Gosub, _csp_line_detail
Send,^!{F3}
gosub, csp_line_ao
  return

:*:25::
Gosub, _csp_line_kage
Send,^!+{F8}
Return


:*:33::
Gosub, _csp_line_kage
Send,^!{F5}
Send,+{F13}
Send,^!{F4}
Send,^{h}
  return


:*:34::
Gosub, _csp_line_detail
Send,^!{F5}
gosub, csp_line_ao
  return

:*:35::
Gosub, _csp_line_kage
Send,^!{F9}
  return



:*:43::
Gosub, _csp_line_kage
Send,^!{F9}
Send,+{F13}
Send,^!{F8}
Send,^{h}
  return

:*:44::
Gosub, _csp_line_detail
Send,^!{F9}
gosub, csp_line_ao
  return



_csp_line_kage:
_cspflowSC("s")
dbl:=getDoubleKeyLine()
dbl.byKey("j",buf_CSPFlow, 1)
Send,^+{F14}
Send,{w}
return


:*:11::
Gosub, _csp_line_kage
Send,^!{F1}
Return

:*:12::
csp_shadow_to_gradation:=0
Gosub, _csp_line_kage
Send,^!{F2}
Return



:*:21::
Gosub, _csp_line_kage
Send,^!{F3}
Return

:*:22::
csp_shadow_to_gradation:=0
Gosub, _csp_line_kage
Send,^!{F4}
Return

:*:31::
Gosub, _csp_line_kage
Send,^!{F5}
Return

:*:32::
csp_shadow_to_gradation:=0
Gosub, _csp_line_kage
Send,^!{F4}
Return



:*:41::
Gosub, _csp_line_kage
Send,^!{F9}
Return
:*:42::
csp_shadow_to_gradation:=0
Gosub, _csp_line_kage
Send,^!{F8}
Return



csp_line_liquid:
_cspflowSC("l")
dbl:=getDoubleKeyLine()
dbl.byKey("j",buf_CSPFlow, 1)
Send,^+{F14}
Send,{w}
Send,{F15}
send,{e}
_buf_CSP_line_bkflag:=
return

:*:55::
send,^!+{e}
gosub, csp_gradation_nip
Return

:*:055::
F5::
csp_gradation_nip:
_buf_CSP_line_gradation:="{y}"
send,^{d}
gosub, csp_line_liquid
Return

:*:51::
send,^!+{e}
gosub, csp_gradation_dark
Return

:*:051::
csp_gradation_dark:
_buf_CSP_line_gradation:="{d}"
send,^{d}
gosub, csp_line_liquid
Return

:*:52::
send,^!+{e}
gosub, csp_gradation_light
Return

:*:052::
csp_gradation_light:
_buf_CSP_line_gradation:="{7}"
send,^{d}
gosub, csp_line_liquid
Return

:*:53::
send,^!+{e}
gosub, csp_gradation_round
Return

:*:053::
csp_gradation_round:
_buf_CSP_line_gradation:="{F11}"
send,^{d}
gosub, csp_line_liquid
Return


csp_line_shadow:
Numpad5::
_cspflowSC("s")
dbl:=getDoubleKeyLine()
dbl.byKey("j",buf_CSPFlow, 1)
Send,^+{F14}
Send,{F1}
Send,{w}
_buf_CSP_line_bkflag:=
return

Numpad9::
_cspflowSC("b")
dbl:=getDoubleKeyLine()
dbl.byKey("j",buf_CSPFlow, 1)
Send,^+{F14}
Send,{F1}
Send,{w}
_buf_CSP_line_bkflag:=
return

NumpadEnter & Numpad6::
_cspflowSC("r")
dbl:=getDoubleKeyLine()
dbl.byKey("j",buf_CSPFlow, 1)
Send,^+{F14}
Send,{w}
Send, ^{F2}
Send,{F1}
send,{F3}
_buf_CSP_line_bkflag:=
return

NumpadEnter & Numpad9::
_cspflowSC("b")
dbl:=getDoubleKeyLine()
dbl.byKey("j",buf_CSPFlow, 1)
Send,^+{F14}
Send,{w}
Send, ^{F1}
Send,{F1}
_buf_CSP_line_bkflag:=
return

NumpadEnter & Numpad8::
_cspflowSC("r")
dbl:=getDoubleKeyLine()
dbl.byKey("j",buf_CSPFlow, 1)
Send,^+{F14}
Send,{w}
Send, ^{F3}
Send,{F1}
send,{F3}
_buf_CSP_line_bkflag:=
return

NumpadEnter & Numpad0::
Send,^!{F16}
_cspflowSC("u")
dbl:=getDoubleKeyLine()
dbl.byKey("j",buf_CSPFlow, 1)
Send,^+{F14}
Send,{F1}
Send,{w}
_buf_CSP_line_bkflag:=
return

NumpadEnter & Numpad4::
Send,{F16}
send,^+!{F1}
_cspflowSC("u")
dbl:=getDoubleKeyLine()
dbl.byKey("j",buf_CSPFlow, 1)
Send,^+{F14}
Send,{F1}
Send,{w}
sleep,100
send,^!+{j}
send,^!+{i}
_buf_CSP_line_bkflag:=
return

NumpadEnter & Numpad2::
Send,{F16}
send,^+!{F6}
_cspflowSC("u")
dbl:=getDoubleKeyLine()
dbl.byKey("j",buf_CSPFlow, 1)
Send,^+{F14}
Send,{F1}
Send,{w}
_buf_CSP_line_bkflag:=
return

~Numpad0::
_cspflowSC("u")
dbl:=getDoubleKeyLine()
dbl.byKey("j",buf_CSPFlow, 1)
Send,^+{F14}
Send,{F1}
Send,{w}
_buf_CSP_line_bkflag:=
return

NumpadEnter & Numpad1::
Send,{F16}
send,^+!{F4}
_cspflowSC("u")
dbl:=getDoubleKeyLine()
dbl.byKey("j",buf_CSPFlow, 1)
Send,^+{F14}
Send,{F1}
Send,{w}
_buf_CSP_line_bkflag:=
return

NumpadEnter & Numpad5::
Send,{F16}
send,^+!{F2}
_cspflowSC("u")
dbl:=getDoubleKeyLine()
dbl.byKey("j",buf_CSPFlow, 1)
Send,^+{F14}
Send,{F1}
Send,{w}
_buf_CSP_line_bkflag:=
return





Numpad3::
_cspflowSC("w")
dbl:=getDoubleKeyLine()
dbl.byKey("n",buf_CSPFlow, 1)
Send,^+{F14}
Send,{F1}
Send,{s}
Send,{w}
_buf_CSP_line_bkflag:=
return

NumpadEnter & Numpad3::
Send,^!{F16}
send,^!{F6}
csp_line_white_layer:
_cspflowSC("w")
dbl:=getDoubleKeyLine()
dbl.byKey("n",buf_CSPFlow, 1)
Send,^+{F14}
Send,{F1}
Send,{s}
Send,{w}
_buf_CSP_line_bkflag:=
return


csp_shadow_to_gradation:
    send, ^+!{w}
    send,^{d}

  return
