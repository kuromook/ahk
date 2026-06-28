# Work Log

## 2026-06-26 CSP cleanup

- Archived unused or legacy CSP scripts under `csp/_unused/` instead of deleting them.
  - `csPaint_LayerRenamer.ahk`
  - `csPaint_speeddial.ahk`
  - `csPaint_textpropertyShortInput.ahk`
  - `csPaint_textShortInput.ahk`
  - `csPaint_renameBase.ahk`
  - `csPaint_funcGroup.ahk`
  - `cspPaint_flowGetDoubleKey.ahk`
  - `csPaint_tooltip.ahk`
  - `csPaint_tooltipFlow.ahk`
  - `csPaint_tooltipPaint.ahk`
- Commented out the matching includes in `csp/csPaint.ahk`.
- Disabled stale shortcut-list tooltip files because they no longer matched the real CSP settings.
- Removed dangling tooltip label dependencies from `csp/csPaint_mode.ahk` and `csp/csPaint_func.ahk`.
- Removed active dependency on the HotKeyIt `TT` library.
- Replaced current Flow display with the built-in AutoHotkey `ToolTip` command.
- Archived the unused top-level `TT/` library directory under `_unused/TT/`.
- Moved the Flow tooltip to the lower-left area of the desktop by using `A_ScreenHeight - 120`.
- Left `csPaint_makePaintLayer.ahk` active because it still appears to support Paint / Gray paint layer creation.

## 2026-06-27 IME helper cleanup

- Replaced the ignored external `IME/IME.ahk` include with the project-owned `ime_control.ahk`.
- Added minimal IME helpers used by active scripts:
  - `IME_IsON()`
  - `IME_ON()`
  - `IME_EnsureOff()`
  - `IME_GetConversion()`
  - `IME_SetConversion()`
- Updated CSP mode/flow input entry points to call `IME_EnsureOff()` before `Input`.
- Removed unused top-level includes from `windows11.ahk`:
  - `_Struct/sizeof.ahk`
  - `_Struct/_Struct.ahk`
  - `_Struct/Struct.ahk`
  - `<remoteBuf>`
  - `IME/IME.ahk`
- Archived no-longer-active external modules under `_unused/`:
  - `IME/`
  - `Lib/`
  - `_Struct/`
- Kept `AutoHotkey-JSON/JSON.ahk` active because `csp/csPaint_func.ahk` still uses `JSON.parse()`.
- Committed and pushed as `62c3703 Replace external IME helper with local implementation`.
