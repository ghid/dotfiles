helloWorld() {
	MsgBox Hello, World!
}

; OnExit("restoreWindowsTerminal", -1)

restoreWindowsTerminal() {
    showWindowsTerminal(A_DetectHiddenWindows)
}

toggleWindowsTerminal() {
    toggleWindow("WindowsTerminal.exe")
}

toggleGvim() {
    toggleWindow("gvim.exe")
}

toggleWindow(exeName) {
    WinGet minMaxState, MinMax, ahk_exe %exeName%
    OutputDebug %A_ThisFunc%: %exeName% - %minMaxState%
    if (minMaxState == -1) {
        WinRestore ahk_exe %exeName%
    } else if (minMaxState == 0 | minMaxState == 1) {
        WinMinimize ahk_exe %exeName%
    }
}

hideWindowsTerminal(detectHiddenWindowsState) {
    OutputDebug %A_ThisFunc%
    DetectHiddenWindows Off
    if ((notHiddenId := WinExist("ahk_exe WindowsTerminal.exe"))) {
        WinHide ahk_id %notHiddenId%
    }
    DetectHiddenWindows %detectHiddenWindowsState%
    return notHiddenId
}

showWindowsTerminal(detectHiddenWindowsState) {
    OutputDebug %A_ThisFunc%
    DetectHiddenWindows On
    if ((hiddenId := WinExist("ahk_exe WindowsTerminal.exe"))) {
        WinShow ahk_id %hiddenId%
        WinActivate ahk_id %hiddenId%
    }
    DetectHiddenWindows %detectHiddenWindowsState%
    return hiddenId
}
