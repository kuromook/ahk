# Unused CSP scripts

These scripts are kept here as an archive instead of being deleted.

- `csPaint_LayerRenamer.ahk`: no active include/reference was found.
- `csPaint_speeddial.ahk`: legacy line-mode speed dial shortcuts. Include disabled in `csp/csPaint.ahk`.
- `csPaint_textpropertyShortInput.ahk`: legacy text-property short inputs. Include disabled in `csp/csPaint.ahk`; overlaps with `csPaint_textShortInput.ahk`.
- `csPaint_textShortInput.ahk`: legacy line-mode IME-on text shortcuts. Include disabled in `csp/csPaint.ahk`.
- `csPaint_renameBase.ahk`: legacy base-mode `99...` rename hotstrings. Include disabled in `csp/csPaint.ahk`.
- `csPaint_funcGroup.ahk`: legacy group shortcut labels. No caller was found for `_CSPGroup...` labels or `_toolTipGroupCSP_SCList`.
- `cspPaint_flowGetDoubleKey.ahk`: legacy flow message builders for `Flow.message()`. `Flow.message()` is currently not called because `_csPaintFlow()` shows the fixed text `"message disabled"`.
- `csPaint_tooltip.ahk`: stale mode/common shortcut tooltip lists. Include disabled in `csp/csPaint.ahk`; `_toolTipFuncCSP_SCList` call removed from `csp/csPaint_mode.ahk`.
- `csPaint_tooltipFlow.ahk`: stale flow shortcut tooltip and `TT_MsgFlow` click handler. Include disabled in `csp/csPaint.ahk`; `Flow.onclick()` no longer references `TT_MsgFlow`.
- `csPaint_tooltipPaint.ahk`: stale paint/base mode tooltip lists. Include disabled in `csp/csPaint.ahk`.
