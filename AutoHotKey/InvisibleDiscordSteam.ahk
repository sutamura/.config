; discordAPIの場所を変数に格納
configFilePath := A_ScriptDir . "\discordAPI.ini"
; APIキーを読み込み
IniRead, apiKey, %configFilePath%, API, key

Home::                  ;Homeキーを押下した場合
KeyWait, Home, T0.5     ;Homeキーが離されるのを0.5秒待機
If (Errorlevel == 1) {
    run steam://friends/status/invisible
    ; 読み込んだAPIキーが存在するか確認
    if (apiKey = "ERROR")
    {
        MsgBox, Error : Unable to find "discordAPI.ini"
        ExitApp
    }
    ; DiscordConsole.exeを起動
    run C:\Users\iu\AppData\Local\Discord\DiscordConsole.exe -noupdate -t "%apiKey%" -x "status invisible" -x "exit",,Hide
    TrayTip, AutoHotKey, Steam & Discord status set to Hidden, , 1
    sleep 2000          ;2秒待機
    Menu Tray, NoIcon   ;トースト通知を消す
    Menu Tray, Icon
    KeyWait, Home       ;Homeが離されるまで待機 これが無いと連続してプログラムが実行される
                        ;居留守プログラムは実行されているが下のreturn未実行の状態 キーを離すと実行される
    return
}
else {
    run steam://friends/status/online
    ; 読み込んだAPIキーが存在するか確認
    if (apiKey = "ERROR")
    {
        MsgBox, Error : Unable to find "discordAPI.ini"
        ExitApp
    }
    ; DiscordConsole.exeを起動
    run C:\Users\iu\AppData\Local\Discord\DiscordConsole.exe -noupdate -t "%apiKey%" -x "status online" -x "exit",,Hide
    TrayTip, AutoHotKey, Steam & Discord status set to Online, , 1
    sleep 2000
    Menu Tray, NoIcon
    Menu Tray, Icon
    return              ;既にHomeは離されている(Errorlevel == 0)のでKeywaitは不要
}