#Requires AutoHotkey >=2.0- <2.1

A_DPIOriginal := 0
A_GetMouseSpeed := 0x70
A_SetMouseSpeed := 0x71

F22::{
    global A_DPIOriginal
    static A_DPIAdjusted := 3
    if A_DPIOriginal = 0 {
        DllCall("SystemParametersInfo", "UInt", A_GetMouseSpeed, "UInt", 0, "UIntP", &A_DPIOriginal, "UInt", 0)
    }
    DllCall("SystemParametersInfo", "UInt", A_SetMouseSpeed, "UInt", 0, "UInt", A_DPIAdjusted, "UInt", 0)
    TrayTip "MouseSensitivity set to 3", "AutoHotKey", "Iconi Mute"
    SetTimer () => TrayTip(), -2000
}
F23::{
    global A_DPIOriginal
    static A_DPIAdjusted := 7
    if A_DPIOriginal = 0 {
        DllCall("SystemParametersInfo", "UInt", A_GetMouseSpeed, "UInt", 0, "UIntP", &A_DPIOriginal, "UInt", 0)
    }
    DllCall("SystemParametersInfo", "UInt", A_SetMouseSpeed, "UInt", 0, "UInt", A_DPIAdjusted, "UInt", 0)
    TrayTip "MouseSensitivity set to 7", "AutoHotKey", "Iconi Mute"
    SetTimer () => TrayTip(), -2000
}
F24::{
    global A_DPIOriginal
    static A_DPIAdjusted := 10
    if A_DPIOriginal = 0 {
        DllCall("SystemParametersInfo", "UInt", A_GetMouseSpeed, "UInt", 0, "UIntP", &A_DPIOriginal, "UInt", 0)
    }
    DllCall("SystemParametersInfo", "UInt", A_SetMouseSpeed, "UInt", 0, "UInt", A_DPIAdjusted, "UInt", 0)
    TrayTip "MouseSensitivity set to 10", "AutoHotKey", "Iconi Mute"
    SetTimer () => TrayTip(), -2000
}
F21::{
    global A_DPIOriginal
    static A_DPIAdjusted := 12
    if A_DPIOriginal = 0 {
        DllCall("SystemParametersInfo", "UInt", A_GetMouseSpeed, "UInt", 0, "UIntP", &A_DPIOriginal, "UInt", 0)
    }
    DllCall("SystemParametersInfo", "UInt", A_SetMouseSpeed, "UInt", 0, "UInt", A_DPIAdjusted, "UInt", 0)
    TrayTip "MouseSensitivity set to 12", "AutoHotKey", "Iconi Mute"
    SetTimer () => TrayTip(), -2000
}

F14::{
    Run('powershell.exe -WindowStyle Hidden -Command "komorebic start --bar --whkd --config $Env:KOMOREBI_CONFIG_HOME/komorebi.json"', "", "Hide")
}
F15::{
    Run('powershell.exe -WindowStyle Hidden -Command "komorebic start --bar --whkd --config $Env:KOMOREBI_CONFIG_HOME/biremoko.json"', "", "Hide")
}
F16::{
    Run('powershell.exe -WindowStyle Hidden -Command "komorebic stop"', "", "Hide")
    Run('powershell.exe -WindowStyle Hidden -Command "Stop-Process -Name komorebi-bar"', "", "Hide")
}
F17::{
    Run('powershell.exe -WindowStyle Hidden -Command "Stop-Process -Name komorebi-bar"', "", "Hide")
    Sleep 2000
    Run('powershell.exe -WindowStyle Hidden -Command "komorebi-bar -c $Env:KOMOREBI_CONFIG_HOME/biremoko.bar.json"', "", "Hide")
}
F18::{
    Run('powershell.exe -WindowStyle Hidden -Command "Stop-Process -Name komorebi-bar"', "", "Hide")
    Sleep 2000
    Run('powershell.exe -WindowStyle Hidden -Command "komorebi-bar -c $Env:KOMOREBI_CONFIG_HOME/komorebi.bar.json"', "", "Hide")
}

; PauseキーをShift+Altに変更し、長押しにも対応
Pause::
{
    ; ShiftとAltを押した状態にする
    Send("{Shift Down}{Alt Down}")
    ; Pauseキーが離されるまで待機
    KeyWait("Pause")
    ; ShiftとAltを離す
    Send("{Shift Up}{Alt Up}")
}


; Google Chrome のウィンドウがアクティブなときにのみホットキーを有効にする
#HotIf WinActive("ahk_exe chrome.exe")

; Ctrl と NumpadEnter の両方が離されたときに発火
~Ctrl & NumpadEnter Up::
{
    ; Ctrl + Shift + T を送信
    Send("^+t")
    Sleep(100)  ; 60ms のディレイ

    ; Tabを9回送信（各Tab送信の間にディレイを挿入）
    Loop 9
    {
        Send("{Tab}")
        Sleep(30)  ; 10ms のディレイ
    }

    ; Enter を送信
    Send("{Enter}")
    Sleep(30)  ; 10ms のディレイ

    ; Escape を送信
    Send("{Esc}")
    return
}

; Ctrl と NumpadAdd の両方が離されたときに発火
~Ctrl & NumpadAdd Up::
{
    ; Ctrl + Shift + T を送信
    Send("^+t")
    Sleep(100)  ; 60ms のディレイ

    ; Tabを7回送信（各Tab送信の間にディレイを挿入）
    Loop 7
    {
        Send("{Tab}")
        Sleep(30)  ; 10ms のディレイ
    }

    ; Enter を送信
    Send("{Enter}")
    Sleep(30)  ; 10ms のディレイ

    ; Escape を送信
    Send("{Esc}")
    return
}

; すべてのウィンドウで有効なホットキーの設定（Chrome 以外）
#HotIf ; 条件をリセットして他のホットキーを通常通り有効化

#HotIf WinActive("ahk_exe cs2.exe")
3::
{
    Send "3"
    Send "{Insert}"
}
#HotIf

return