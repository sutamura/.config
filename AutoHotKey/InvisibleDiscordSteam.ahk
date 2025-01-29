; APIキーを読み込み
apiKey := IniRead("C:\Users\iu\.config\AutoHotKey\discordAPI.ini", "API", "key")

Home::                  ;Homeキーを押下した場合
{
global
ErrorLevel := !KeyWait("Home", "T0.5")     ;Homeキーが離されるのを0.5秒待機
If (Errorlevel == 1) {
    Run("steam://friends/status/invisible")
    ; DiscordConsole.exeを起動
    RunWait 'C:\Users\iu\AppData\Local\Discord\DiscordConsole.exe -noupdate -t "' apiKey '" -x "status invisible" -x "exit"'
    TrayTip("AutoHotKey", "Steam & Discord status set to Hidden", 1)
    Sleep(2000)          ;2秒待機
    TrayTip
    ErrorLevel := !KeyWait("Home")      ;Homeが離されるまで待機 これが無いと連続してプログラムが実行される
                                        ;居留守プログラムは実行されているが下のreturn未実行の状態 キーを離すと実行される
    return
}
else {
    Run("steam://friends/status/online")
    ; DiscordConsole.exeを起動
    RunWait 'C:\Users\iu\AppData\Local\Discord\DiscordConsole.exe -noupdate -t "' apiKey '" -x "status invisible" -x "exit"'
    TrayTip("AutoHotKey", "Steam & Discord status set to Online", 1)
    Sleep(2000)
    TrayTip
    return              ;既にHomeは離されている(Errorlevel == 0)のでKeywaitは不要
}
} ; V1toV2: Added bracket in the end