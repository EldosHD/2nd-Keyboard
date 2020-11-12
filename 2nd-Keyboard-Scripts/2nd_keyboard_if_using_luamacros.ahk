#NoEnv
SendMode Input
#InstallKeybdHook
#UseHook On
Menu, Tray, Icon, shell32.dll, 283 ; this changes the tray icon to a little keyboard!
#SingleInstance force ;only one instance of this script may run at a time!
    #MaxHotkeysPerInterval 2000
#WinActivateForce ;https://autohotkey.com/docs/commands/_WinActivateForce.htm
    
#Include, C:\AHK\2nd-keyboard\LUAMACROS\2nd_keyboard_functions\gaming_functions.ahk
#Include, C:\AHK\2nd-keyboard\LUAMACROS\2nd_keyboard_functions\hypixel_functions.ahk
#Include, C:\AHK\2nd-keyboard\LUAMACROS\2nd_keyboard_functions\paths.ahk
#Include, C:\AHK\2nd-keyboard\LUAMACROS\2nd_keyboard_functions\intervallGui.ahk
;----------------------Note----------------------
;Multimedia Keys, Numlock, Größer/kleiner Taste, Capslock, Win, Button between Win and Strg (right side) ---> Not working
;both alt,enter, strg and Shift buttons are the same

;-------------------Variables--------------------
global leftClickPressed  :=
global rightClickPressed :=
global currentLanguage := 1
global rapidIntervalLeft := 10
global rapidIntervalRight := 10
global minecraftDungonsAFKVar := 0
global minecraftDungonsAFKOn := 0
global antiAFKVar := 0
global antiAFKDelay := 10
global rapidFireLeftOn := 0
global rapidFireRightOn := 0
global ctrlQCraftingOn := 0
global defaultTagPath := A_ScriptDir . "\2nd_keyboard_functions\defaultTag.txt"
;----------------End of Variables----------------

;-------------------Functions--------------------
checkInput(inputStr) {
    var := ""
    If inputStr is integer
		var :=  "int"
	If ((%inputStr% > 999 && %inputStr% <= 9999) && %var% == "int") 
		return inputStr

	InputBox, inputStr, Discord Tag, Please use a 4 digit integer 
	inputStr := checkInput(inputStr)
	return inputStr
}

createBitlyLink() {
    run, C:\AHK\2nd-keyboard\LUAMACROS\2nd_keyboard_functions\randomBitlyLink_function.ahk
    FileRead, output,C:\AHK\2nd-keyboard\LUAMACROS\2nd_keyboard_functions\linkTransfer.txt
    return output
}

openDiscordAndChat(target) {
    if WinExist("ahk_exe Discord.exe")
    {
        WinActivate, ahk_exe Discord.exe
    }
    else
    {
        MsgBox, please start discord first
        
        ; you can run discord instead of the msgbox too. just delete the line above and uncomment the lines below
        ; note that you have to give the code below your discord install location
        
        ; run, put your discord location here
        ; WinWait, Discord
        ; WinActivate, ahk_exe Discord.exe
        ; sleep 9000
    }
    MouseClick, Left, 35, 48
    Sleep, 300
    MouseClick, Left, 137, 48 
    Send % target
    sleep 300
    MouseClick, Left, 1000, 470
}

stringToArray() {
    InputBox, letters , Charakter Array Maker , Enter the charakters you want in your array 
    lettersArray := StrSplit(letters)
    lengthArray := lettersArray.Length()
    
    Loop, %lengthArray% {
        quotationmark := """"
        If (lengthArray != A_Index) {
            charakterArray .= quotationmark . lettersArray[A_Index] . quotationmark . ","
        } Else {
            charakterArray .= quotationmark . lettersArray[A_Index] . quotationmark
        }
    }
    return charakterArray
}
;----------------End of Functions----------------

#IfWinActive ;---- This will allow for everything below this line to work in ANY application.

~F24::
    FileRead, key, C:\AHK\2nd-keyboard\LUAMACROS\keypressed.txt
    
    If (key = "just for if")
    {
        
    }
    ;--------Normal Keys (packed in packages)--------
    ;-------------------1st package------------------
    else if(key = "q")
    {
        run % paths.getMinecraftPath()
    }
    else if(key = "w")
    {
        run % paths.getMinecraftModsPath()
    }
    else if(key = "e")
    {
        run % paths.getHotswapModsPath()
    }
    else if(key = "a")
    {
        paths.runDownloadsPath() ;opens the download folder --> view paths.ahk for details
    }
    else if(key = "s")
    {
        run C:\
    }
    else if(key = "d")
    {
        run D:\
    }
    else if(key = "y")																													
    {
        run % paths.getWorkPath()
    }
    else if(key = "x")
    {
        run % paths.getStartupPath()
    }
    else if(key = "c")
    {
        run % paths.getLuamacrosPath()
    }
    ;-------------------2nd package------------------
    else if(key = "r")
    {
        Clipboard:=1495774276
    }
    else if(key = "t")
    {
        
    }
    else if(key = "z")
    {
        
    }
    else if(key = "f")
    {
        run % paths.getOneDrivePath()
    } 
    else if(key = "g")
    {
        
    }
    else if(key = "h")
    {
        
    }
    else if(key = "v")
    {
        run % paths.getDocumentsPath()
    }
    else if(key = "b")
    {
        
    }
    else if(key = "n")
    {
        
    }
    ;-------------------3rd package------------------
    else if(key = "u")
    {
        
    }
    else if(key = "i")
    {
        
    }
    else if(key = "o")
    {
        
    }
    else if(key = "j")
    {
        
    }
    else if(key = "k")
    {
        
    }
    else if(key = "l")
    {
        
    }
    else if(key = "m")
    {
        
    }
    else if(key = "comma")
    {
        
    }
    else if(key = "period")
    {
        
    }
    ;-------------------4th package------------------
    else if(key = "p")
    {
        
    }
    else if(key = "semicolon")
    {
        
    }
    else if(key = "equals")
    {
        
    }
    else if(key = "`")
    {
        
    }
    else if(key = "singlequote")
    {
        
    }
    else if(key = "slash")
    {
        
    }
    else if(key = "minus")
    {
        run % paths.getWindowSpyPath()
    }
    ;-----------Special Keys left to right-----------
    else if(key = "escape")
    {
        
    }
    else if(key = "backslash")
    {
        
    }
    else if(key = "tab")
    {
        
    }
    else if(key = "rShift")
    {
        
    }
    else if(key = "rCtrl")
    {
        
    }
    else if(key = "alt")
    {
        
    }
    else if(key = "space")
    {
        Clipboard := stringToArray()
    }
    else if(key = "enter")
    {
        Run % paths.getClientForLampPath()
        }
    else if(key = "backspace")
    {
        FileSelectFile, filePath
        Clipboard := filePath
    }
    ;---------------------Zahlen---------------------
    else if(key = "1")
    {
        
    }
    else if(key = "2")
    {
        
    }
    else if(key = "3")
    {
        
    }
    else if(key = "4")
    {
        
    }
    else if(key = "5")
    {
        
    }
    else if(key = "6")
    {
        
    }
    else if(key = "7")
    {
        
    }
    else if(key = "8")
    {
        
    }
    else if(key = "9")
    {
        
    }
    else if(key = "0")
    {
        
    }
    else if(key = "leftbracket")
    {
        
        InputBox, discordTag, Discord Tag, Type in the discord tag which you want to write to!
        discordTag := checkInput(discordTag)
        FileDelete, defaultTagPath
        FileAppend, %discordTag%, %defaultTagPath% 
    }
    else if(key = "rightbracket")
    {
        FileReadLine, discordTag, %defaultTagPath%,1
        openDiscordAndChat(discordTag)
        
        Random, linkOrMsg, 1, 10 ;you can obviously change this to change the probability of a link or msg 
        If (linkOrMsg != 1) {
            msgPath := A_ScriptDir . "\2nd_keyboard_functions\randomMsg.txt"
            FileRead, i, %msgPath%
            iArray := StrSplit(i, "`n", "`t")
            Random, rand, 1, iArray.Length()
            sendMsg := iArray[rand]
        } Else {
            sendMsg := createBitlyLink()
        }
        
        Send %sendMsg%
        Send {Enter}
    }
    ;------------------Functionkeys------------------
    else if(key = "F1")
    {
        
    }
    else if(key = "F2")
    {
        
    }
    else if(key = "F3")
    {
        
    }
    else if(key = "F4")
    {
        
    }
    else if(key = "F5")
    {
        
    }
    else if(key = "F6")
    {
        
    }
    else if(key = "F7")
    {
        
    }
    else if(key = "F8")
    {
        
    }
    else if(key = "F9")
    {
        
    }
    else if(key = "F10")
    {
        
    }
    else if(key = "F11")
    {
        
    }
    else if(key = "F12")
    {
        
    }
    ;-------------Block above Arrow Keys-------------
    else if(key = "insert") 
    {
        
    }
    else if(key = "home") ;the Pos 1 key
    {
        
    }
    else if(key = "pageup")
    {
        
    }
    else if(key = "delete") ;entf
    {
        
    }
    else if(key = "end")
    { 
        
    }
    else if(key = "pagedown")
    {
        
    }
    ;-------------------Arrow Keys-------------------
    else if(key = "up") 
    {
        Send {w down}
    }
    else if(key = "left")
    {
        Send {a down}
    }
    else if(key = "down")
    {
        Send {s down}
    }
    else if(key = "right")
    {
        Send {d down}
    }
    
    ;---------------------Numpad---------------------
    else if(key = "num0")
    {
        
    }
    else if(key = "num1")
    {
        Send {Shift down}
        }
    else if(key = "num2")
    {
        Send {Ctrl down}
    }
    else if(key = "num3")
    {
        intervallGuiCreate()
    }
    else if(key = "num4")
    {
        if (rightClickPressed != true) {     ;Rightclick Pressed
            rightClickPressed := true
            click,down,right
        } else {
            rightClickPressed := false
            click,up,right
        }
    }
    else if(key = "num5")
    {
        If (rapidFireRightOn == 0) {
            RMBRapidPress(1)
            rapidFireRightOn := 1
        } Else {
            RMBRapidPress(0)
            rapidFireRightOn := 0
        }
    }
    else if(key = "num6")
    {
        If (antiAFKVar == 0) {
            antiAFK(1)
            antiAFKVar := 1
        } Else {
            antiAFK(0)
            antiAFKVar := 0
        }
    }
    else if(key = "num7") ;Leftclick Pressed
    {
        if (leftClickPressed != true) {    
            leftClickPressed := true
            click,down,left
        } else {
            leftClickPressed := false
            click,up,left
        }
    }
    else if(key = "num8")
    {
        If (rapidFireLeftOn == 0) {
            lMBRapidPress(1)
            rapidFireLeftOn := 1
        } Else {
            lMBRapidPress(0)
            rapidFireLeftOn := 0
        }
        
    }
    else if(key = "num9")
    {
        If (ctrlQCraftingOn == 0) {
            ctrlQCrafting(1)
            ctrlQCraftingOn := 1
        } Else {
            ctrlQCrafting(0)
            ctrlQCraftingOn := 0
        }
    }
    else if(key = "numDiv")
    {
        Send, {F21}
    }
    else if(key = "numMult")
    {
        Send, {F20}
    }
    else if(key = "numMinus")
    {
        
    }
    else if(key = "numPlus")
    {
        If (minecraftDungonsAFKOn == 0) {
            minecraftDungonsAFK(1)
            minecraftDungonsAFKOn := 1
        } Else {
            minecraftDungonsAFK(0)
            minecraftDungonsAFKOn := 0
        }
    }
Return ;from luamacros F24

^!t::
    run % paths.getTerminalPath()
Return

^+NumpadMult::
    run % paths.getLuamacrosScriptPath()
return

^+NumpadSub::
    ExitApp
    
    