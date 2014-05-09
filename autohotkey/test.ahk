;
; AutoHotkey Version: 1.x
; Language:       English
; Platform:       Win9x/NT
; Author:         Bastien HUOT <bhuot@kernel-networks.com>
;
; Script Function:
;	Template script (you can customize this template by editing "ShellNew\Template.ahk" in your Windows folder)
;

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

^#t::WinMaximize, A
^#s::WinRestore, A
^#q::Run U:\divers\Outils\sqldeveloper\sqldeveloper.exe
^#j::Run C:\Oracle\Middleware\jdeveloper\jdeveloper.exe
^#p::Run "U:\divers\CACEIS Bastien\putty.exe"
^#d::Run, U:\divers\Outils\designconsole\xlclient.cmd, U:\divers\Outils\designconsole
^#o::Run explorer "U:\JDevEnvironment\workspace\IDALL\Oracle Identity Manager\oimDeployment"
^#w::Run explorer "U:\JDevEnvironment\workspace"
^#f::Run "C:\Program Files\Mozilla Firefox\firefox.exe"

^#c::Run U:\divers\gui1.ahk

Capslock::n

#IfWinActive, ahk_class Notepad
^a::MsgBox You pressed Control-A while Notepad is active.

^!s::
Send ^c!{tab}pasted:^v
return

::btw::by the way

;!+«::
;MsgBox "You should learn Bépo!"
;MsgBox Really
;return