#Requires AutoHotkey >=2.0- <2.1

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