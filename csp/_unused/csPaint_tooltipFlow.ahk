; show flow key list
_toolTipFlowCSP_SCList:
CoordMode, ToolTip,Screen
ToolTip,
(
*Flow Select Short Cut

s: Skin
o: Oral
n: Nip
l: Lip
p: Penis
v: Vagina
t: Teeth

---------------
h: Hair
e: Eye
g: Gem
c: Cloth
p: Pupil
l: Lash

---------------
s: Sketch
l: Lineart
m: Model
b: Background

---------------
n: Nip
l: Lip
t: Tongue
p: Penis
v: Vagina
s: Sigh
b: BackEffect
e: Eye
--------------
w: Wisper
h: Haha
)
,280,460,13
return

TT_MsgFlow(TT,Label){
;	MsgBox % Label
    flowObj:=getFlowObjByJson()
    global buf_CSPFlow, buf_CSPMode
    flow := flowObj.byFlag(buf_CSPFlow, buf_CSPMode)
    video:= flow.videoPath
    document:= flow.docPath
    OutPutDebug, %video% %document%
	if Label=click1
	{
        Run,C:\Program Files (x86)\VideoLAN\VLC\vlc.exe %video%
    } 
    else
    {
        firefox:="C:\Program Files (x86)\Mozilla Firefox\firefox.exe"
        Run,%firefox% %document%
    }
   Return
}