RAlt & f::
Appskey & f::              ;first key
RAlt & .::
Appskey & .::
Suspend,Permit
if(IME_IsON(WinExist("A")) ){
 IME_ON(WinExist("A"), False)
}
if(buf_CSPMode =10) 
  Input,InputChar,C I L1 T2,{Esc},a,b,d,h,q ;paint mode
else if(buf_CSPMode =3)
  Input,InputChar,C I L1 T2,{Esc},n,s,p,q ;Base mode
else if(buf_CSPMode =2)
  Input,InputChar,C I L1 T2,{Esc},r,u,w,l,b,s,q ;lineart mode


if ErrorLevel=Match
{
    ToolTip,,280,-660,4 
    flowObj:=getFlowObjByJson() 
    if(flowObj.test())
    {
      ToolTip,Import error,280,460,13
      return
    }
    if(buf_CSPFlow)
    {
      TT_Remove()
    }
    flow := flowObj.byKey(InputChar, buf_CSPMode)
    if(flow)
    {
      buf_CSPFlow := flow.flag
      _csPaintFlow(flow)
    }
    Else
    {
      ;MsgBox, key error
      t:=flowObj.keyList(buf_CSPMode)
      ToolTip,%t%,280,-660,4
      OutputDebug, none
    }
}
Else
{
  ;MsgBox, not match
  flowObj:=getFlowObjByJson() 
  if(buf_CSPFlowHelp != 0)
  {
    ;MsgBox, key error
    t:=flowObj.keyList(buf_CSPMode)
    ToolTip,%t%,280,-660,4 
    buf_CSPFlowHelp :=0

  }
  Else
  {
    buf_CSPFlowHelp :=1
    ToolTip,,,,4
  }
}
Return


