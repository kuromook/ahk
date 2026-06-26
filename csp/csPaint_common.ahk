; =============================================================================
; csPaint_common.ahk
; 共通ユーティリティ：DoubleKeyマクロ・フロー操作ヘルパー
; =============================================================================
; 使い方：各padkeyファイルの先頭で #Include csPaint_common.ahk
; =============================================================================

; --- DoubleKey タイミング定数 ------------------------------------------------
global DBL_INTERVAL := 400   ; ダブルタップ判定ミリ秒

; --- DoubleKey マクロ ---------------------------------------------------------
; HandleDoubleKey(varName, dblObj, keyChar)
;   varName  : タイムスタンプ保持変数名（文字列）例 "ctrldbl_M"
;   dblObj   : DoubleKey オブジェクト
;   keyChar  : dbl.byKey() に渡すキー文字
;
; 呼び出し例:
;   F7::
;     dbl := getDoubleKeyPaint()
;     HandleDoubleKey("ctrldbl_M", dbl, "m")
;   return
;
HandleDoubleKey(varName, dblObj, keyChar) {
    global buf_CSPFlow, DBL_INTERVAL
    ts := A_TickCount
    if (ts < %varName%) {
        dblObj.byKey(keyChar, buf_CSPFlow, 2)
        %varName% := 0
    } else {
        %varName% := ts + DBL_INTERVAL
        dblObj.byKey(keyChar, buf_CSPFlow, 1)
    }
}

; --- Line系 共通フロー切替+レイヤー選択 ------------------------------------
; _cspLine_switchFlow(flowId, jOrN, extraSends)
;   flowId     : _cspflowSC() に渡すフロー識別子
;   jOrN       : byKey に渡すキー ("j" or "n")
;   extraSends : フロー設定後に追加で送るキー配列（省略可）
;
; 呼び出し例（Numpad5など繰り返しパターンの置き換え）:
;   Numpad5::
;     _cspLine_switchFlow("s", "j", ["{F1}", "{w}"])
;   return
;
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

; --- Paint系 共通フロー切替+デフォルトブラシ選択 ---------------------------
; _cspPaint_switchFlow(flowId, extraSends)
;   flowId     : _cspflowSC() に渡すフロー識別子
;   extraSends : フロー設定後に追加で送るキー配列（省略可）
;
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
