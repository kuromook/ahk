^b::
if A_TickCount < %ctrldouble%
{
  Send,{e} 
  SoundPlay,*-1
  Gosub, _csPaintResetSubTool
  ctrldouble=0
}
else
{
    ctrldouble=%A_TickCount%
    ctrldouble+=400
    Send,{e} 
}
return

+m::
if A_TickCount < %ctrldouble%
{
  Send,{f}
  SoundPlay,*-1
    Gosub, _csPaintResetSubTool
    ctrldouble=0
}
else
{
    ctrldouble=%A_TickCount%
    ctrldouble+=400
    Send,{f} 
      SoundPlay,*16
}
return

+j::
if A_TickCount < %ctrldouble%
{
    ctrldouble=0
;    Gosub , _CS_ToolPenInout
    Send,{p}
    Gosub, _csPaintResetSubTool
    SoundPlay,*-1
}
else
{
    ctrldouble=%A_TickCount%
    ctrldouble+=400
    Send,{p} 
    SoundPlay,*64
}
return


+n::
  if A_TickCount < %ctrldouble%
  {
    Send,{l} 
    Gosub, _csPaintResetSubTool
    ctrldouble=0
    SoundPlay,*-1
   }
  else
   {
    ctrldouble=%A_TickCount%
    ctrldouble+=400
    Send,{l} 
    SoundPlay,*48
   }
return

^+F7::
  if A_TickCount < %ctrldouble%
  {
     Send,{ShiftDown}{F16}{ShiftUp}
     ctrldouble=0
   }
  else
   {
    ctrldouble=%A_TickCount%
    ctrldouble+=400
     Send,{CtrlDown}{ShiftDown}{F7}{ShiftUp}{CtrlUp}
   }
return



i::
    Send,{w} 
return


+x::
 if A_TickCount < %ctrldouble%
 {
    Send,{ESC}                        ;
    ctrldouble=0

 }
 else
 {
    ctrldouble=%A_TickCount%
    ctrldouble+=400
    Send,{x} 
 }
return
