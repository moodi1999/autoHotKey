#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#InstallKeybdHook
#InstallMouseHook

~AppsKey & F11::
<#F11::
Send {Volume_Down}
return

~AppsKey & F12::
<#F12::
Send {Volume_Up}
return

~AppsKey & F10::
<#F10::
Send {Volume_Mute}
return

~AppsKey & F9::
<#F9::
Send {Media_Play_Pause}
return

~AppsKey & F8::
<#F8::
Send {Media_Next}
return

~AppsKey & F7::
<#F7::
Send {Media_Prev}
return

<#F6::
Send {Launch_Media}
return

~LControl & XButton1::
Send ^{PgUp}
return

#s::
Send {Media_Play_Pause}
Process, Close, spotify.exe
Sleep, 2000
Run, spotify.exe, , Minimize
Sleep, 2000
Send {Media_Play_Pause}
return

~LWin & XButton1::
Send ^{PgDn}
return

~LWin & c::
ifWinNotExist, chrome.exe
  Run, chrome, , Max
  
ifWinActive, chrome.exe
  WinRestore, chrome.exe
  return

; AppsKey::
; Send {RWin Down}
; Send {RWin Up}
; return