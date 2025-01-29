#Requires AutoHotkey >=2.0- <2.1

#+F16::{
  Run('powershell.exe -WindowStyle Hidden -Command "komorebic start --bar --whkd --config $Env:KOMOREBI_CONFIG_HOME/komorebi.json"', "", "Hide")
}
#+F17::{
  Run('powershell.exe -WindowStyle Hidden -Command "komorebic start --bar --whkd --config $Env:KOMOREBI_CONFIG_HOME/biremoko.json"', "", "Hide")
}
#+F18::{
  Run('powershell.exe -WindowStyle Hidden -Command "komorebic stop"', "", "Hide")
  Run('powershell.exe -WindowStyle Hidden -Command "Stop-Process -Name komorebi-bar"', "", "Hide")
}
#+F19::{
  Run('powershell.exe -WindowStyle Hidden -Command "Stop-Process -Name komorebi-bar"', "", "Hide")
  Sleep 2000
  Run('powershell.exe -WindowStyle Hidden -Command "komorebi-bar -c $Env:KOMOREBI_CONFIG_HOME/komorebi.bar.json"', "", "Hide")
}
#+F20::{
  Run('powershell.exe -WindowStyle Hidden -Command "Stop-Process -Name komorebi-bar"', "", "Hide")
  Sleep 2000
  Run('powershell.exe -WindowStyle Hidden -Command "komorebi-bar -c $Env:KOMOREBI_CONFIG_HOME/biremoko.bar.json"', "", "Hide")
}

return