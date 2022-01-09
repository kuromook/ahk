
;---------------------------------------------------------------
RAlt & m::
Appskey & m::              ;first key
Suspend,Permit
if(IME_IsON(WinExist("A")) ){
 IME_ON(WinExist("A"), False)
}
Input,InputChar,C I L1 T2,{Esc},q,b,k,l,p,m ;second keys
if ErrorLevel=Match
{
      if InputChar=k                   ;actions
    {
      ToolTip,,,,12
      _csPaintMode(4,"Paint")
      buf_CSPMode := 10
      _cspflowSC("d")
      dbl:=getDoubleKeyPaint()
      dbl.byKey("j",buf_CSPFlow, 1)
      Send,^+{F14}
      Send,{w}
      SetNumLockState ,On
      buf_CSPDisableErace:=1
    }
    Else
      if InputChar=p                   ;actions
    {
      ToolTip,,,,12
      _csPaintMode(3,"Paint")
      buf_CSPMode := 10
      _cspflowSC("a")
      dbl:=getDoubleKeyPaint()
      dbl.byKey("j",buf_CSPFlow, 1)
      Send,^+{F14}
      Send,{w}
      SetNumLockState ,On
      buf_CSPDisableErace:=1
    }
    Else
      if InputChar=b                 ;actions
    {
      ToolTip,,,,12
      _csPaintMode(3,"Paint")
      buf_CSPMode := 10
      _cspflowSC("b")
      dbl:=getDoubleKeyPaint()
      dbl.byKey("j",buf_CSPFlow, 1)
    }

  Else
    if InputChar=m                   ;actions
    {
      _csPaintMode(2,"Base")
      buf_CSPMode := 3
      _cspflowSC("s")
      dbl:=getDoubleKeyBase()
      dbl.byKey("j",buf_CSPFlow, 0)
      Send,^+{F14}
      Send,{w}
    }
  Else
    if InputChar=l                   ;actions
    {
      ToolTip,,,,12
      _csPaintMode(1,"Lineart")
      buf_CSPMode := 2
      _cspflowSC("r")
      dbl:=getDoubleKeyLine()
      dbl.byKey("j",buf_CSPFlow, 1)
      Send,^+{F14}
      Send,{w}
    }
  Else
    if InputChar=q			;キーを追加する場合はココにつなげていく
      ToolTip,,,,12
}
Else
{
  if(buf_CSPModeHelp != 0)
  {
    buf_CSPModeHelp :=0
    CoordMode, ToolTip,Screen
    Gosub , _toolTipFuncCSP_SCList
  }
  Else
  {
    buf_CSPModeHelp :=1
    ToolTip,,,,1
  }
}
Return
;---------------------------------------------------------------
