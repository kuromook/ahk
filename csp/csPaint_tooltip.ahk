_toolTipFuncCSP_SCList:
CoordMode, ToolTip,Screen
ToolTip,
(
*Mode Select Short Cut

l: Lineart

d: Dustpan
---------------
c: Character
f: Fruid
o: Onomatpeia
s: Set
---------------
b: Base
p: Paint
---------------
c: Continuity
r: Rough
)
,10,10,1
return


_toolTipFuncCSP_SCListCommon:
CoordMode, ToolTip,Screen
ToolTip,
(
*Common Short Cut (Private)
L1-MB : 
L2-MB : Radial menu

F1 : MainColor = Black

F12 : Scan

F13 : select Layer
F14 : select color (outside)
F15 : quick mask

End : Release Selection
Home : Fill coloer

NumDot : lock Transparent

/ : object
. : object (text, effect)
, : layer select
m : layer select (skecth)
)
,40,860,19
return


_CSPModeCharacter:
ToolTip,
(
Character MODE
Short Cut List

L1 : Pen Kabura
L1*: Pen Maru
L2 : Bucket (cur) | Fil
L2*: Bucket 0 (cur) | Fil
R1 : Gradation (deep)
R2 : Pattern Brush 4 (1) | Marker

Select : Quick Mask
Start : View Border
----------------------
Numpad[0-9] :select layer

F16 : linart Layer plus
F17 : Tone Property
F19 : Duplicate layer to Shadow
)
,10,60,12
return


_CSPModeFruid:
ToolTip,
(
Fruid MODE
Short Cut List

L1 : Pen Kabura
L1*: Pen Maru
L2 : Bucket (cur) | Fil
L2*: Bucket 0 (cur) | Fil
R1 : Gradation (deep)
R2 : Pattern Brush 4 (1) | Marker

Select : Quick Mask
Start : View Border
----------------------
Numpad[0-9] :select layer

F16 : linart Layer plus
F19 : Duplicate layer to Shadow
)
,10,60,12
return


_CSPModeEnvironment:
ToolTip,
(
Environement MODE
Short Cut List

L1 : Pen Kabura
L1*: Pen Maru
L2 : Bucket (cur) | Fil
L2*: Bucket 0 (cur) | Fil
R1 : Gradation (deep)
R2 : Pattern Brush 4 (1) | Marker

Select : Quick Mask
Start : View Border
----------------------

F16 : Duplicate to Shadow
F17 : solid Layer White
F18 : BG(blender) import
F19 : Tonize

C-g : Clip Layer
)
,10,60,12
return



_CSPModeLineart:
ToolTip,
(
LINEART MODE
Short Cut List

L1 : G Free
L2 : G Control
*double to reset pen

R1 : Rotation
R2 : view Sketch

Select : Reset View
Select*: Print View
Start: Curv select
start*: clear

UP* : Bucket
DOWN* : Quick mask

--- TAB PEN----
Pen Side D : Fil close
Pen Side U : Radial Menu

--- FUNC ---
F16 : new Line Layer
.F16: new Line Layer 2
F17 : Tonize
F18 : 
F19 : Duplicate layer to Shadow

--- NUMLOCK ---
NumPgdn:binary Line
NumEnd:binary Line Dizzer

)
,10,60,12
return


_CSPModeDustpan:
ToolTip,
(
DASTPAN MODE
Short Cut List

L1 : Pen
L1*: - 
L2 : Rectangle
L2*: -
R2 : Fil
R2*: -
-----------------------
F16 : Import PSD Desktop
 /Untitled.jpg
F17 : Import PSD
F18 : Solid Layer White
F19 : Convert Lineart
.F18: after KOMA layer action
.F19: set Sketch

S-F16: clip BG
)
,10,60,12
return


_CSPModeRough:
ToolTip,
(
ROUGH MODE
Short Cut List

L1 : Pencil
L2 : Sharp Pencil
R2 : Conte
R1 : Eracer

Sel : Reset View
Sel*: Redraw Layer
Start: Set Default
---------------------
pen doble reset pen setting
)
,10,60,12
return

_CSPModeStoryboard:
ToolTip,
(
Storyboard MODE
Short Cut List
(IME ON)
F17: Paste
F18: Return
F19: Emacs
---------------
on Emacs
F17: Copy Speaking
(F18: Photoshop)
F19: Comic Studio 

---------------
Short Inputs
@@: Heart
]]: tsu
[[: TSU
...: ...
!?:!?
!!:!!
`: Wave
)
,10,60,12
return