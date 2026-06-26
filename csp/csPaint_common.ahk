; =============================================================================
; csPaint_common.ahk
; Shared helpers for CSP padkey scripts.
; =============================================================================

; Double-tap interval in milliseconds.
DBL_INTERVAL := 400

; HandleDoubleKey(timerName, dblObj, keyChar, interval)
;   timerName : unique timer key, for example "paint_m" or "line_x"
;   dblObj    : DoubleKey object
;   keyChar   : key passed to dbl.byKey()
;   interval  : optional double-tap interval override
HandleDoubleKey(timerName, dblObj, keyChar, interval := "") {
    global buf_CSPFlow, DBL_INTERVAL
    static timers := {}

    if (interval = "")
        interval := DBL_INTERVAL ? DBL_INTERVAL : 400

    ts := A_TickCount
    if (timers.HasKey(timerName) && ts < timers[timerName]) {
        dblObj.byKey(keyChar, buf_CSPFlow, 2)
        timers.Delete(timerName)
    } else {
        timers[timerName] := ts + interval
        dblObj.byKey(keyChar, buf_CSPFlow, 1)
    }
}

; Switch a line flow and select the default layer/tool sequence.
_cspLine_switchFlow(flowId, jOrN = "j", extraSends = "") {
    global buf_CSPFlow, _buf_CSP_line_bkflag
    _cspflowSC(flowId)
    dbl := getDoubleKeyLine()
    dbl.byKey(jOrN, buf_CSPFlow, 1)
    Send, ^+{F14}
    if (IsObject(extraSends)) {
        for _, k in extraSends
            Send, % k
    }
    _buf_CSP_line_bkflag :=
}

; Switch a paint flow and select the default brush sequence.
_cspPaint_switchFlow(flowId, extraSends = "") {
    global buf_CSPFlow
    _cspflowSC(flowId)
    dbl := getDoubleKeyPaint()
    dbl.byKey("j", buf_CSPFlow, 1)
    Send, ^+{F14}
    Send, {w}
    if (IsObject(extraSends)) {
        for _, k in extraSends
            Send, % k
    }
}
