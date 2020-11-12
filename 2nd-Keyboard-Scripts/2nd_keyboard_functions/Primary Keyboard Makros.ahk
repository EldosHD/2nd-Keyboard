#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


;----------------------------------------Currently unused ----------------------------------------

StartOpera() {
    if WinExist("ahk_exe opera.exe")
    {
        If WinActive("ahk_exe opera.exe")
        {
            Send ^{Tab}  
        }
        else
        {
            WinActivate, ahk_exe opera.exe
        }
    }
    else
    {
        run, D:\Program Files (x86)\launcher.exe
        WinWait, ahk_exe opera.exe
        WinActivate, ahk_exe opera.exe
    }
}

StartDiscord() {
    if WinExist("ahk_exe Discord.exe")
	{
    	WinActivate, ahk_exe Discord.exe
	}
	else
	{
		run, C:\Users\Valen\AppData\Local\Discord\app-0.0.306\Discord.exe
		WinWait, ahk_exe Discord.exe
		WinActivate, ahk_exe Discord.exe
	}
}

StartVSCode() {
    if WinExist(" ahk_exe devenv.exe")
	{
    	WinActivate,  ahk_exe devenv.exe
	}
	else if WinExist("ahk_exe code.exe")
	{
    	WinActivate, ahk_exe code.exe
	}
	else
	{
		run D:\Users\Valen\AppData\Local\Programs\Microsoft VS Code\Code.exe
		WinWait, ahk_exe code.exe
		WinActivate, ahk_exe code.exe

	}
}

StartWinExplorer() {
    IfWinNotExist, ahk_class CabinetWClass
        Run, explorer.exe
    GroupAdd, ValisExplorer, ahk_class	CabinetWClass
    If WinActive("ahk_exe explorer.exe")
        GroupActivate, ValisExplorer, r
    Else
        WinActivate, ahk_class CabinetWClass
}




F13::
StartOpera()
Return

F14::
StartDiscord()
Return

F15::
StartVSCode()
Return

F16::
StartWinExplorer()
Return