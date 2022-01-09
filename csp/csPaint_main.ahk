
~Space & .::
;if !SizeLockFlag
  send,^{NumpadAdd}
return

~Space & ,::
;if !SizeLockFlag
  send,^{NumpadSub}
return




;選択解除
End::
Suspend,Permit
Send,{CtrlDown}{d}{CtrlUp}
return


NumpadDot::
Send,{F8}
return


+Up::
  Send,{CtrlDown}{AltDown}{]}{Altup}{CtrlUp}
  Return

+Down::
  Send,{CtrlDown}{AltDown}{[}{Altup}{CtrlUp}
  Return

_csp_disableErace:
if (buf_CSPDisableErace=1)
{
buf_CSPDisableErace:=0
}
else
{
  buf_CSPDisableErace:=1
}
return

