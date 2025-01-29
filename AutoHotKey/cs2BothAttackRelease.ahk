#Requires AutoHotkey >=2.0- <2.1

#HotIf WinActive("ahk_exe cs2.exe")
3::
{
    Send "3"
    Send "{Insert}"
}

return