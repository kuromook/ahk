_csPaintFlowNewLayerColored:
Send,{F16}
Send,^{a}
Send,!{BackSpace}
Send,^{d}
return

;not used
_csPaintFlowShadowLayerNormal:
Send,{F18}
Send,^{z}
Send,^{z}
Return

_csPaintFlowConvertShadow:
Send,{F13}
Sleep, 2000
Send,{w}
Send,!{Del}
Sleep,2000
Send,^{d}
Send,!{]}
Send,{s}
Send,{vkF3sc029}
Send,{F13}
Sleep, 2000
Send,!{Del}
Sleep, 2000
Send,^{d}
return