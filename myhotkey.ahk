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
Process, Exist, Music.UI.exe
  {
  If ! errorLevel
    {
    ; Run, cmd /c start "explorer.exe shell:C:\Program Files\WindowsApps\Microsoft.ZuneMusic_3.6.25021.0_x64__8wekyb3d8bbwe!Microsoft.ZuneMusic" "C:\Users\AhmadrezaMoodi\Music\Playlists\All.zpl",,Hide
    Run, C:\Users\AhmadrezaMoodi\Documents\Misc\groove.bat, C:\Users\AhmadrezaMoodi\Documents\Misc
    Return
    }
  else
    {
    Send {Media_Play_Pause}
    Return
    }
  }
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
Run, "D:\StoreAppLinks\Groove Music.lnk"
return

~LControl & XButton1::
Send ^{PgUp}
return

; #s::
; Send {Media_Play_Pause}
; Process, Close, spotify.exe
; Sleep, 2000
; Run, spotify.exe, , Minimize
; Sleep, 2000
; Send {Media_Play_Pause}
; return

; #s::
; ; ifWinNotExist, Music.UI.exe
; ;   MsgBox,  , "hi", "mammad",

; Process, Exist, Music.UI.exe ; check to see if AutoHotkey.exe is running
;   {
;   If ! errorLevel
;     {
;     ; IfExist, %A_ProgramFiles%\AutoHotkey\AutoHotkey.exe
;     MsgBox, , "Title", "Text",
;     Return
;     }
;   else
;     {
;     MsgBox, , "Title2", "Text2",
;     Return
;     }
;   }

; return

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

#t::
Run, cmd.exe, , Max

#z::  ;Pause Break button is my chosen hotkey

SoundSet, +1, MASTER, mute,7 ;
SoundGet, master_mute, , mute, 7

ToolTip, Mute %master_mute% ;
SetTimer, RemoveToolTip, 1000
return

RemoveToolTip:
SetTimer, RemoveToolTip, Off
ToolTip
return

#NoEnv
#SingleInstance force
SendMode Input

#IfWinActive ahk_class Notepad ahk_exe notepad.exe
    ^BS:: send ^+{left}{del}
#IfWinActive ahk_exe explorer.exe
    ^BS::

