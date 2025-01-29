#Requires AutoHotkey >=2.0- <2.1

A_DPIOriginal := 0
A_GetMouseSpeed := 0x70
A_SetMouseSpeed := 0x71

; Copy this function into your script to use it.
HideTrayTip() {
    TrayTip  ; Attempt to hide it the normal way.
    if SubStr(A_OSVersion,1,3) = "10." {
        A_IconHidden := true
        Sleep 200  ; It may be necessary to adjust this sleep.
        A_IconHidden := false
    }
}

#+F21::{
    global A_DPIOriginal
    static A_DPIAdjusted := 3
    if A_DPIOriginal = 0 {
        DllCall("SystemParametersInfo", "UInt", A_GetMouseSpeed, "UInt", 0, "UIntP", &A_DPIOriginal, "UInt", 0)
    }
    DllCall("SystemParametersInfo", "UInt", A_SetMouseSpeed, "UInt", 0, "UInt", A_DPIAdjusted, "UInt", 0)
    TrayTip "MouseSensitivity set to 3", "AutoHotKey", "Iconi Mute"
    Sleep 1000 ; 1秒待機
    HideTrayTip ; トースト通知を消す
}
#+F22::{
    global A_DPIOriginal
    static A_DPIAdjusted := 6
    if A_DPIOriginal = 0 {
        DllCall("SystemParametersInfo", "UInt", A_GetMouseSpeed, "UInt", 0, "UIntP", &A_DPIOriginal, "UInt", 0)
    }
    DllCall("SystemParametersInfo", "UInt", A_SetMouseSpeed, "UInt", 0, "UInt", A_DPIAdjusted, "UInt", 0)
    TrayTip "MouseSensitivity set to 6", "AutoHotKey", "Iconi Mute"
    Sleep 1000 ; 1秒待機
    HideTrayTip ; トースト通知を消す
}
#+F23::{
    global A_DPIOriginal
    static A_DPIAdjusted := 10
    if A_DPIOriginal = 0 {
        DllCall("SystemParametersInfo", "UInt", A_GetMouseSpeed, "UInt", 0, "UIntP", &A_DPIOriginal, "UInt", 0)
    }
    DllCall("SystemParametersInfo", "UInt", A_SetMouseSpeed, "UInt", 0, "UInt", A_DPIAdjusted, "UInt", 0)
    TrayTip "MouseSensitivity set to 10", "AutoHotKey", "Iconi Mute"
    Sleep 1000 ; 1秒待機
    HideTrayTip ; トースト通知を消す
}
#+F24::{
    global A_DPIOriginal
    static A_DPIAdjusted := 13
    if A_DPIOriginal = 0 {
        DllCall("SystemParametersInfo", "UInt", A_GetMouseSpeed, "UInt", 0, "UIntP", &A_DPIOriginal, "UInt", 0)
    }
    DllCall("SystemParametersInfo", "UInt", A_SetMouseSpeed, "UInt", 0, "UInt", A_DPIAdjusted, "UInt", 0)
    TrayTip "MouseSensitivity set to 13", "AutoHotKey", "Iconi Mute"
    Sleep 1000 ; 1秒待機
    HideTrayTip ; トースト通知を消す
}

return