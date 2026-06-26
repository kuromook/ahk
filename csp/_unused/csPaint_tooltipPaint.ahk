
_CSPModePaint:
ToolTip,
(
PAINT MODE
Short Cut List

L1 : Pen Free (* Brush)
L2 : Pen Control (* Blur )

R1 : Rotate
R2 : Rough

-----------------------
[0-9] 
  : flow
+ NumDot : create layer
+ (SQ) : brush option
+ (TR) : color
+ Num0 : adjst

.0 : clip layer
.NumEnt: Fill

Select : Curve/Confirm
Start : View reset

UP* : Fill
DOWN* : Sub color

--- FUNC ---
F16 : BaseMask Layer
F17 : Merge Mask

--- NUMLOCK ---
Num1: get Color
Num3: fil base color
)
,10,60,12
return

_CSPModeGraypaint:
ToolTip,
(
Gray PAINT MODE
Short Cut List

L1 : Pen Free (* Brush)
L2 : Pen Control (* Blur)

R1 : Rotate
R2 : switch Rough

-----------------------
NumDot+[0-9+-]
.       : gray color
NumLock :  Layer folder

Select : Quick Mask
Start : View reset

UP* : Quick Mask
DOWN* : Fil
-----------------------
F16 : new Layer Color
F17 : Shadow Layer
F18 : High Light Layer
F19 : Emit Layer

.F16 : new Layer Color
.F17 : Shadow Layer

.F19 : color change
)
,10,60,12
return


_CSPModeBase:
ToolTip,
(
Base MODE
Short Cut List

L1 : Pen
L1*: - 
L2 : Bucket
L2*: Bucket 2

R1 : Rotate
R1*: -
R2 : Mask Layer
R2*: -

----------------------
c-Up/Down: layer destination
s-Up/Down: layer order

----------------------
Select : Curve/Confirm
Start : View reset

----------------------
F16 : BaseMask Layer
F17 : Merge Mask
----------------------
999h: Hair
999e: Eye
999o: Oral
999t: Teeth
999c: Cloth
999s: Skin
999z: Zubon
999u: Underware
999a: Accecery
999l: Line
999g: Goods
999f: Fruid

----------------------
)
,10,60,12
return
