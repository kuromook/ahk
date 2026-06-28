# JoyToKey / AutoHotkey Keymap

JoyToKey runtime is placed under `JoyToKey692/` so startup can launch it from
this repository. Git tracks the JoyToKey configuration files, while executable
and log files are ignored by the repository-wide `*.exe` and `*.log` rules.

## Managed Files

- `JoyToKey692/AppLink.dat`
- `JoyToKey692/clipstudiopaint.cfg`
- `JoyToKey692/JoyToKey.ini`
- `JoyToKey692/pc88.cfg`
- `JoyToKey692/th.cfg`

## Clip Studio Paint Profile

`AppLink.dat` maps `CLIPStudioPaint.exe` to the `clipstudiopaint` profile.

### Joystick 1 / 2

| Input | JoyToKey output | Main AHK receiver |
| --- | --- | --- |
| Axis left | Shift+A | `csp/csPaint_padkeyLine.ahk` |
| Axis right | Shift+D | `csp/csPaint_padkeyLine.ahk` |
| Axis up | Shift+I | `csp/csPaint_padkey*.ahk` |
| Axis down | Shift+X | `csp/csPaint_padkey*.ahk` |
| Button01 | Ctrl | modifier |
| Button02 | `.` | chord key |
| Button03 | `,` | chord key |
| Button04 | Space | modifier |
| Button05 | E | CSP direct shortcut |
| Button06 | F7 | `m` double-key action |
| Button07 | P | CSP direct shortcut |
| Button08 | Shift+Space | CSP direct shortcut |
| Button09 | F5 | `s` / confirm action |
| Button10 | Shift | modifier |

### Joystick 3

| Input | JoyToKey output | Main AHK receiver |
| --- | --- | --- |
| Axis left | Shift+A | `csp/csPaint_padkeyLine.ahk` |
| Axis right | Shift+D | `csp/csPaint_padkeyLine.ahk` |
| Axis up | Shift+I | `csp/csPaint_padkey*.ahk` |
| Axis down | Shift+X | `csp/csPaint_padkey*.ahk` |
| Button01 | `/` | CSP direct shortcut |
| Button02 | `.` | chord key |
| Button03 | `,` | chord key |
| Button04 | Space | modifier |
| Button05 | Shift+N | `n` double-key action |
| Button06 | Shift+M | `m` double-key action |
| Button07 | Shift+J | base-mode direct action |
| Button08 | Shift+Space | CSP direct shortcut |
| Button09 | Alt+F14 | base-mode action |
| Button10 | Ctrl+Shift+F17 | base-mode action |

### Joystick 4

| Input | JoyToKey output | Main AHK receiver |
| --- | --- | --- |
| Axis up | Alt+] | CSP direct shortcut |
| Axis down | Alt+[ | CSP direct shortcut |
| Button02 | Ctrl+Alt+Z | CSP direct shortcut |
| Button03 | Ctrl+Shift+Z | CSP direct shortcut |
| Button04 | Ctrl+Alt | modifier |
