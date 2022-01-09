#IfWinActive ahk_class Photoshop

+x::
if A_TickCount < %ctrldoubleR%
{
  send,{x}
  send,+!{n}
  ctrldoubleR=0
}
else
{
    ctrldoubleR=%A_TickCount%
    ctrldoubleR+=400
    send,+!{r}
}
return

+w::
if A_TickCount < %ctrldoubleW%
{
  send,{g}
  ctrldoubleW=0
}
else
{
    ctrldoubleW=%A_TickCount%
    ctrldoubleW+=400
    send,+!{n}
}
return

#a::
send,{F5}
send,^+{i}
send,^{f}
send,^{d}
return

#s::
send,^{s}
send,{return}
send,^{w}
return

end::
send,^{d}
return

NumpadSub::
send,{v}
return
#IfWinActive