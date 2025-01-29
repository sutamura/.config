#Requires AutoHotkey >=2.0- <2.1

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