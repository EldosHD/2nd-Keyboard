#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%


;---------------Gui Settings---------------
global guiHeight := 60      ; Changes the height of the text window (max is 500)
global guiWidth := 200
global bgColor = Black         ; background color of the gui
global guiX = 20               ; the horizontal position of the gui screen px from the left = 0
global guiY = 970              ; the vertical position of the gui screen px from the bottom
global myProgrammingLanguages := ["Python", "Autohotkey", "Java"]
global programmingLanguage :=
currentLanguage :=1
doThisPython :="#doThis"
doThisAHK := ";doThis"
doThisJava := "//doThis"



programmingLanguageGuiCreate() {
    programmingLanguage := myProgrammingLanguages[currentLanguage]
    Gui +E0x20 -Caption +LastFound +ToolWindow +AlwaysOnTop ; Durchklickbar, rahmenlos, zuletzt gefunden, kein Taskleistensymbol, immer im Vordergrund
    Gui, Show, x%guiX% y%guiY% w%guiWidth% h%guiHeight%
    Gui, Font, s20 cWhite
    Gui, add, Text, , %programmingLanguage%
    Gui, Color, 000000
    WinSet, Transparent, 200   
    Sleep, 800
    fade := 200 ; Variable für Einblend bzw. Ausblend-Effekt
    Loop 20 
    {
        fade := fade - 10 ; Ausblend-Effekt
        Sleep, 1
        WinSet, Transparent, %fade% ; Pinke Farbe komplett rausfiltern, den Rest einblenden  0xFC62FD 
    }
    Gui, Destroy
}


nextLanguage() {
    If (currentLanguage == myProgrammingLanguages.Length()) {
        currentLanguage := 1
    } Else {
        currentLanguage := currentLanguage +1
    }
}

previousLanguage() {
    If (currentLanguage == 1) {
        currentLanguage := myProgrammingLanguages.Length()
    } Else {
        currentLanguage := currentLanguage -1
    }
}

ifAbfrage() {
    If (myProgrammingLanguages[currentLanguage] == "Python") {
        Send, if condition:
        Send, {Enter} 
        Send, %doThisPython%
    } else If (myProgrammingLanguages[currentLanguage] == "Autohotkey") {
        Send, If (condition) {{}
        Send, {Delete} {Enter}
        Send, %doThisAHK%
        Send, {Enter} {Backspace}{Backspace}
        Send, {}}

    } else If (myProgrammingLanguages[currentLanguage] == "Java") {
        Send, If (condition) {{}
        Send, {Delete} {Enter}
        Send, %doThisJava%;
        Send, {Enter} {Backspace}{Backspace}
        Send, {}}
    }
}


ifElseAbfrage() {
    If (myProgrammingLanguages[currentLanguage] == "Python") {
        Send, if condition:
        Send, {Enter} 
        Send, %doThisPython%
        Send, {Enter} {Backspace}{Backspace}
        Send, else:
        Send, {Enter} {Tab}
        Send, %doThisPython%
    } else If (myProgrammingLanguages[currentLanguage] == "Autohotkey") {
        Send, If (condition) {{}
        Send, {Delete} {Enter}
        Send, %doThisAHK%
        Send, {Enter} {Backspace}{Backspace}
        Send, {}} else {{}
        Send, {Enter} {Tab} 
        Send, %doThisAHK%
        Send, {Enter} {Backspace}{Backspace}
        Send, {}}

    } else If (myProgrammingLanguages[currentLanguage] == "Java") {
        Send, If (condition) {{}
        Send, {Delete} {Enter}
        Send, %doThisJava%;
        Send, {Enter} {Backspace}{Backspace}
        Send, {}} else {{}
        Send, {Enter} {Tab} 
        Send, %doThisJava%;
        Send, {Enter} {Backspace}{Backspace}
        Send, {}}
    }
}

addElIf() {
   If (myProgrammingLanguages[currentLanguage] == "Python") {
        Send, elif condition:
        Send, {Enter} 
        Send, %doThisPython%
    } else If (myProgrammingLanguages[currentLanguage] == "Autohotkey") {
        Send, else If (condition) {{}
        Send, {Delete} {Enter}
        Send, %doThisAHK%
        Send, {Enter} {Backspace}{Backspace}
        Send, {}}

    } else If (myProgrammingLanguages[currentLanguage] == "Java") {
        Send, else If (condition) {{}
        Send, {Delete} {Enter}
        Send, %doThisJava%
        Send, {;}
        Send, {Enter} {Backspace}{Backspace}
        Send, {}}
    } 
}

