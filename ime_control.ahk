; Minimal IME helpers for this project.
; Uses WM_IME_CONTROL against the focused control of the active window.

IME_IsON(hWindow := "")
{
	Return _IME_SendControl(hWindow, 0x0005, 0)
}

IME_ON(hWindow := "", IsON := True)
{
	Return _IME_SendControl(hWindow, 0x0006, IsON ? 1 : 0)
}

IME_EnsureOff(hWindow := "", retries := 5, delay := 30)
{
	Loop, %retries%
	{
		if (!IME_IsON(hWindow))
			Return True
		IME_ON(hWindow, False)
		Sleep, %delay%
	}
	Return !IME_IsON(hWindow)
}

IME_GetConversion(hWindow := "")
{
	Return _IME_SendControl(hWindow, 0x0001, 0)
}

IME_SetConversion(hWindow := "", ConversionMode := 0)
{
	Return _IME_SendControl(hWindow, 0x0002, ConversionMode)
}

_IME_SendControl(hWindow, command, value)
{
	targetHwnd := _IME_GetTargetHwnd(hWindow)
	if (!targetHwnd)
		Return 0

	imeHwnd := DllCall("imm32.dll\ImmGetDefaultIMEWnd", "Ptr", targetHwnd, "Ptr")
	if (!imeHwnd)
		Return 0

	Return DllCall("user32.dll\SendMessage"
		, "Ptr", imeHwnd
		, "UInt", 0x0283
		, "Ptr", command
		, "Ptr", value
		, "Ptr")
}

_IME_GetTargetHwnd(hWindow := "")
{
	if (!hWindow)
		hWindow := WinExist("A")
	if (!hWindow)
		Return 0

	if (WinActive("ahk_id " . hWindow))
	{
		ptrSize := A_PtrSize ? A_PtrSize : 4
		cbSize := 8 + (ptrSize * 6) + 16
		VarSetCapacity(guiThreadInfo, cbSize, 0)
		NumPut(cbSize, guiThreadInfo, 0, "UInt")

		if (DllCall("user32.dll\GetGUIThreadInfo", "UInt", 0, "Ptr", &guiThreadInfo))
		{
			focusHwnd := NumGet(guiThreadInfo, 8 + ptrSize, "Ptr")
			if (focusHwnd)
				Return focusHwnd
		}
	}

	Return hWindow
}
