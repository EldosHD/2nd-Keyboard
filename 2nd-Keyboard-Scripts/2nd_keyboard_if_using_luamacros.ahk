#NoEnv
SendMode Input
#InstallKeybdHook
#UseHook On
Menu, Tray, Icon, shell32.dll, 283 ; this changes the tray icon to a little keyboard!
#SingleInstance force ;only one instance of this script may run at a time!
#MaxHotkeysPerInterval 2000
#WinActivateForce ;https://autohotkey.com/docs/commands/_WinActivateForce.htm

#Include, C:\AHK\2nd-keyboard\LUAMACROS\2nd_keyboard_functions\Primary Keyboard Makros.ahk
#Include, C:\AHK\2nd-keyboard\LUAMACROS\2nd_keyboard_functions\Extra_Macros.ahk
#Include, C:\AHK\2nd-keyboard\LUAMACROS\2nd_keyboard_functions\programming_functions.ahk
#Include, C:\AHK\2nd-keyboard\LUAMACROS\2nd_keyboard_functions\gaming_functions.ahk

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
global rapidFireLeftOn := 0
global rapidFireRightOn := 0
;----------------End of Variables----------------


;-------------------Functions--------------------

createBitlyLink() {
	run, C:\AHK\2nd-keyboard\LUAMACROS\2nd_keyboard_functions\randomBitlyLink_function.ahk
	FileRead, output,C:\AHK\2nd-keyboard\LUAMACROS\2nd_keyboard_functions\linkTransfer.txt
	return output
}

openDiscordAndWriteToJacob() {
	if WinExist("ahk_exe Discord.exe")
	{
    	WinActivate, ahk_exe Discord.exe
	}
	else
	{
		run, C:\Users\Valen\AppData\Local\Discord\app-0.0.306\Discord.exe
		WinWait, Discord
		WinActivate, ahk_exe Discord.exe
		sleep 9000
	}
	MouseClick, Left, 35, 48
	Sleep, 300
	MouseClick, Left, 137, 48 
	Send, 1468
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
	run C:\Users\Valen\AppData\Roaming\.minecraft
}
else if(key = "w")
{
	run C:\Users\Valen\AppData\Roaming\.minecraft\Mods
}
else if(key = "e")
{
	run D:\Valen\OneDrive\Desktop\HotSwap Mods
}
else if(key = "a")
{
	run C:\Users\Valen\Downloads
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
	run D:\Valen\OneDrive\Schule
}
else if(key = "x")
{
	run C:\Users\Valen\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup
}
else if(key = "c")
{
	run C:\AHK\2nd-keyboard\LUAMACROS
}
;-------------------2nd package------------------
else if(key = "r")
{
 Clipboard := "1495774276"
}
else if(key = "t")
{
	var := createBitlyLink()
	Send % Var
	Send {Enter}
}
else if(key = "z")
{
	
}
else if(key = "f")
{
	run D:\Valen\OneDrive
} 
else if(key = "g")
{

}
else if(key = "h")
{

}
else if(key = "v")
{
	run D:\Valen\OneDrive\Dokumente
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
	ifAbfrage()
}
else if(key = "semicolon")
{
	ifElseAbfrage()
}
else if(key = "equals")
{
	addElIf()
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
	run D:\Program Files\Auto Hotkey\WindowSpy.ahk
}
;-----------Special Keys left to right-----------
else if(key = "escape")
{
	run C:\Windows\System32\cmd.exe
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
	Run D:\Valen\OneDrive\Desktop\Programming\clientFuerLampe.py
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

}
else if(key = "rightbracket")
{
	openDiscordAndWriteToJacob()

	Random, linkOrMsg, 1, 10
	If (linkOrMsg != 1) {
		FileRead, i, C:\AHK\2nd-keyboard\LUAMACROS\2nd_keyboard_functions\jakob.txt
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
	Run, C:\Program Files (x86)\Minecraft\MinecraftLauncher.exe
}
else if(key = "F2")
{
 Run C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Riot Games\League of Legends
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
	if WinExist("ahk_exe opera.exe")
	{
    	WinActivate, ahk_exe opera.exe
	}
	else
	{
		run, D:\Program Files (x86)\launcher.exe
		WinWait, ahk_exe opera.exe
		WinActivate, ahk_exe opera.exe
	}
}
else if(key = "home") ;the Pos 1 key
{
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
else if(key = "pageup")
{
	nextLanguage()
	programmingLanguageGuiCreate()
}
else if(key = "delete") ;entf
{
	if WinExist("ahk_exe code.exe")
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
else if(key = "end")
{ 
	
}
else if(key = "pagedown")
{
	previousLanguage()
	programmingLanguageGuiCreate()
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
	InputBox, leftOrRightClick,,do you want to change the intervall of the left or rightclick
	If (leftOrRightClick =="left") { 
		InputBox, rapidIntervalLeftNew,,how long should the intervall be?
		rapidIntervalLeft := rapidIntervalLeftNew 
	} else if (leftOrRightClick =="right") {
	 	InputBox, rapidIntervalRightNew,,how long should the intervall be?
		rapidIntervalRight := rapidIntervalRightNew
	}
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
;THE BLOCK OF CODE ABOVE is the original, simple Luamacros-dependant script.

^+NumpadMult::
run C:\AHK\2nd-keyboard\LUAMACROS\SECOND_KEYBOARD_script_for_LUA_MACROS.lua
return

^+NumpadSub::
ExitApp



