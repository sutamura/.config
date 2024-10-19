#IfWinActive,ahk_exe VALORANT-Win64-Shipping.exe

x::
send, {LAlt}
sleep, 10
send, x
return

LShift & x::
send, {LAlt}
sleep, 10
send, x
return


/*
テンキーのマイナスを長押しすると音量が25に

NumpadSub::
KeyWait, NumpadSub, T0.5     ;Homeキーが離されるのを0.5秒待機
If (Errorlevel == 1) {
	send, {esc}
	Click, 1220, 17
	Click, 1100, 155
	send, {escape}
	KeyWait, NumpadSub
	return
	}
else {
	send, {esc}
	Click, 1220, 17
	Click, 1390, 155
	send, {escape}
	return
	}
*/
