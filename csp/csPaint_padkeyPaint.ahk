getDoubleKeyPaint(){
  dbl := new DoubleKey()
  ; base color
  dbl.append( new Operation("main color"   , 13,"i", 1, "!{]}", "key"))
  dbl.append( new Operation("erace"   , 13,"x", 1, "!{[}", "key"))
  dbl.append( new Operation("get color"   , 13,"n", 1, "{z}", "key"))
  dbl.append( new Operation("spoit"   , 13,"j", 1, "{Numpad3}", "key"))
  dbl.append( new Operation("change color"   , 13,"j", 2, "!{Delete}", "key"))
  dbl.append( new Operation("make base"   , 13,"m", 1, "_csp_makeBasecolor", "sub"))

  ; detail sketch
  dbl.append( new Operation("main color"   , 9,"n", 1, "{e}", "key"))
  dbl.append( new Operation("main color"   , 9,"n", 2, "_csp_curveTrance", "sub"))
  dbl.append( new Operation("main color"   , 9,"i", 1, "{w}", "key"))
  dbl.append( new Operation("main color"   , 9,"i", 2, "_csp_pencil_flag2", "sub"))
  dbl.append( new Operation("erace"   , 9,"x", 1, "{x}", "key"))
  dbl.append( new Operation("erace"   , 9,"x", 2, "_csp_pencil_flag", "sub"))
  dbl.append( new Operation("Dot"   , 9,"j", 1, "_csp_pencil", "sub"))
  dbl.append( new Operation("mirror"   , 9,"m", 1, "{b}", "key"))

  
  ; general
  dbl.append( new Operation("Main"   , 6,"x", 1, "{s}", "key"))
  dbl.append( new Operation("erace"   , 6,"x", 2, "+!{x}", "key"))

  ; highlight
  dbl.append( new Operation("Main"   , 1,"x", 1, "{x}", "key"))
  dbl.append( new Operation("erace"   , 1,"x", 2, "_csp_paint_highlight_swap", "sub"))

  dbl.append( new Operation("Free"   , 0,"j", 1, "{p}", "key"))
  dbl.append( new Operation("Brush"   , 0,"j", 2, "{p}", "key"))
  dbl.append( new Operation("curve thin"   , 0,"n", 2, "{z}", "key"))
  dbl.append( new Operation("curve fill"   , 1,"n", 1, "{Numpad9}", "key"))
  dbl.append( new Operation("air brush"   , 0,"m", 1, "{Numpad2}", "key"))
  dbl.append( new Operation("blur"   , 0,"m", 2, "{b}", "key"))

  dbl.append( new Operation("main color"   , 0,"i", 1, "{w}", "key"))
  dbl.append( new Operation("fill"   , 0,"i", 2, "{q}", "key"))
  dbl.append( new Operation("erace"   , 0,"x", 1, "{s}", "key"))
  dbl.append( new Operation("erace"   , 0,"x", 2, "+!{x}", "key"))
  dbl.append( new Operation("curve", 0,"s", 1, "_csp_paint_curve", "sub"))
  dbl.append( new Operation("confirm"   , 0,"s", 2, "_csp_paint_confirm", "sub"))

  dbl.append( new Operation("layer " , 0,"F16", 1, "+!{F16}" , "key"))
  dbl.append( new Operation("layer " , 0,"F17", 1, "+!{F17}" , "key"))
  dbl.append( new Operation("layer " , 0,"F18", 1, "+!{F18}" , "key"))
  dbl.append( new Operation("layer " , 0,"F19", 1, "+!{F19}" , "key"))
  return dbl
}



, & .::
send, +{F10}
Return


+m::
dbl:=getDoubleKeyPaint()
if A_TickCount < %ctrldoubleM%
{
  keys := dbl.byKey("m",buf_CSPFlow, 2)
    ;if (buf_CSPFlow >2)
    ;{
    ;  SoundPlay,*-1
     Gosub, _csPaintResetSubTool
    ;}
  ctrldoubleM=0
   }
else
{
    keys := dbl.byKey("m",buf_CSPFlow, 1)
    ctrldoubleM=%A_TickCount%
    ctrldoubleM+=400
}
return



+j::
dbl:=getDoubleKeyPaint()
if A_TickCount < %ctrldoubleJ%
{
  keys := dbl.byKey("j",buf_CSPFlow, 2)
    if (buf_CSPFlow > 2) && (buf_CSPFlow != 10)
    {
      SoundPlay,*-1
     Gosub, _csPaintResetSubTool
    } else {
    keys := dbl.byKey("j",buf_CSPFlow, 1)
    }
  ctrldoubleJ=0
   }
else
{
    keys := dbl.byKey("j",buf_CSPFlow, 1)

    ctrldoubleJ=%A_TickCount%
    ctrldoubleJ+=400
}
return


+n::
dbl:=getDoubleKeyPaint()
  if A_TickCount < %ctrldoubleN%
   {
      keys := dbl.byKey("n",buf_CSPFlow, 2)
    if (buf_CSPFlow > 2) && (buf_CSPFlow != 10)
    {
    SoundPlay,*-1
     Gosub, _csPaintResetSubTool
    }
    else{
       keys := dbl.byKey("n",buf_CSPFlow, 1)
    }
    ctrldoubleN=0
   }
  else
   {
      keys := dbl.byKey("n",buf_CSPFlow, 1)
    ctrldoubleN=%A_TickCount%
    ctrldoubleN+=400
   }
return




+i::
dbl:=getDoubleKeyPaint()
 if A_TickCount < %ctrldoubleI%
 {
    keys := dbl.byKey("i",buf_CSPFlow, 2)
    ctrldoubleI=0

 }
 else
 {
    ctrldoubleI=%A_TickCount%
    ctrldoubleI+=400
    keys := dbl.byKey("i",buf_CSPFlow, 1)
 }
return


+x::
dbl:=getDoubleKeyPaint()
 if A_TickCount < %ctrldoubleX%
 {
    keys := dbl.byKey("x",buf_CSPFlow, 2)
    ctrldoubleX=0

 }
 else
 {
    keys := dbl.byKey("x",buf_CSPFlow, 1)
    ctrldoubleX=%A_TickCount%
    ctrldoubleX+=400
 }
return


!F14::
dbl:=getDoubleKeyPaint()
 if A_TickCount < %ctrldoubleS%
 {
    keys := dbl.byKey("s",buf_CSPFlow, 2)
    ctrldoubleS=0
 }
 else
 {
    keys := dbl.byKey("s",buf_CSPFlow, 1)
    ctrldoubleS=%A_TickCount%
    ctrldoubleS+=400

 }
return

_csp_paint_highlight_swap:
send,+!{x}
send,{w}
return

_csp_pencil_flag:
if(!pencil_flag)
{
  pencil_flag=1
}Else if(pencil_flag=1){
  pencil_flag=0
}Else{
  pencil_flag=1
}
gosub, _csp_pencil
Return

_csp_pencil_flag2:
if(!pencil_flag)
{
  pencil_flag=2
}Else if(pencil_flag=1){
  pencil_flag=2
}Else{
  pencil_flag=0
}
gosub, _csp_pencil
Return

_csp_pencil:
send,{w}
if(!pencil_flag){
  send,{9}
}Else if(pencil_flag=1){
  send,{F10}
}Else{
  send,{9}
}
Return

_csp_paint_allbrush:
send,+{z}
;send,{F8}
send,{Numpad1}
Return

_csp_paint_curve:
send, {F5}
Return


_csp_erace_fill:
send,{u}
send,{x}
return




^+F17::
  if A_TickCount < %ctrldoubleST%
  {
    Send,{CtrlDown}{9}{CtrlUp}
    Send,{CtrlDown}{8}{CtrlUp}

     ctrldoubleST=0
   }
  else
   {
    ctrldoubleST=%A_TickCount%
    ctrldoubleST+=400
     Send,{CtrlDown}{F16}{CtrlUp}
   }
Return

; Flow script by NumpadDot
NumpadDot & F16::
NumpadDel & F16::
  dbl:=getDoubleKeyPaint()
  keys := dbl.byKey("F16",buf_CSPFlow, 1)
  return

NumpadDot & F17::
NumpadDel & F17::
  dbl:=getDoubleKeyPaint()
  keys := dbl.byKey("F17",buf_CSPFlow, 1)
  return

NumpadDot & F18::
NumpadDel & F18::
  dbl:=getDoubleKeyPaint()
  keys := dbl.byKey("F18",buf_CSPFlow, 1)
  return

NumpadDot & F19::
NumpadDel & F19::
  dbl:=getDoubleKeyPaint()
  keys := dbl.byKey("F19",buf_CSPFlow, 1)
  return


_csp_clipping:
if (buf_CSPFlow != 4 && buf_CSPFlow != 8 && buf_CSPFlow != 9)
{
  Send ^{g}
}
return

_csp_confirm_transform:
send,+{F17}
send {Enter}
send ^{d}
return

_csp_fill_color:
send, !{delete}
send, ^{d}
Return
_csp_curveErace:
send,{u}
send,{x}
Return

_csp_curveTrance:
send,{z}
if (buf_CSPtoggleSketch=1)
{
Send,{s}

}
else
{
  Send,{x}
}
Return


_csp_flatpencil:
send,{F3}
send,{w}
return



_csp_paint_confirm:
  send,{Enter}
  send,^{d}
  return

_csp_mirror:
send ^{F16}
send {w}
return

_csp_set_default_subtool:
  send,^!{F14}
  SoundPlay,*-1
return



_cspflowSC("d")
dbl:=getDoubleKeyPaint()
dbl.byKey("j",buf_CSPFlow, 1)
Send,^+{F14}
Send,{w}
sound(780,180)
return

_csp_makeBasecolor:
send,^!{F1}
Gosub, _csp_clipping
send, !{Delete}
Return






_csp_select_sketch_layer:
  send,^+!{u}
  sleep, 300
  send,{F1}
  return




; change brush option
_csp_reset_brush_option:
send, ^!{] 10}
sleep,100
send, +{] 10}
return



; flow short cut
csp_paint_flow_sc_default:
dbl:=getDoubleKeyPaint()
dbl.byKey("j",buf_CSPFlow, 1)
Send,^+{F14}
Send,{w}
return

Numpad1::
csp_paint_general:
_cspflowSC("a")
gosub,csp_paint_flow_sc_default
return


Numpad2::
csp_paint_highlight:
_cspflowSC("h")
gosub,csp_paint_flow_sc_default
return

;detail sketch
Numpad3::
csp_paint_sketch:
_cspflowSC("d")
gosub,csp_paint_flow_sc_default
return

; normal
NumpadEnter & Numpad0::
send, !^{F1}
gosub,csp_paint_general
return

; normal
NumpadEnter & Numpad1::
send, !^{F1}
send, ^{g}
gosub,csp_paint_general
return

; high light
NumpadEnter & Numpad3::
send, !^{F4}
send, ^{g}
gosub, csp_paint_highlight
return

; shadow
NumpadEnter & Numpad2::
send, !^{F2}
send, ^{g}
gosub, csp_paint_highlight
return

; overlay
NumpadEnter & Numpad4::
send, !^{F3}
send, ^{g}
gosub, csp_paint_highlight
return

; deep
NumpadEnter & Numpad5::
send, !^{F6}
send, ^{g}
gosub, csp_paint_highlight
return

; high light 2
NumpadEnter & Numpad6::
send, !^{F5}
send, ^{g}
gosub, csp_paint_highlight
return

; screen
NumpadEnter & Numpad9::
send, !^{F7}
send, ^{g}
gosub, csp_paint_highlight
return

;Mouse gesture alpha is active, then it not work. whi?
~XButton2::
;+!F13 up::
send,{9}
send,{w}
Return
