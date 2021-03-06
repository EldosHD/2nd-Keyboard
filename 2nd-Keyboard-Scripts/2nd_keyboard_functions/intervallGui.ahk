﻿; Generated by AutoGUI 2.6.2
#SingleInstance Force
    #NoEnv
SetWorkingDir %A_ScriptDir%
SetBatchLines -1
#Include, C:\AHK\2nd-keyboard\LUAMACROS\2nd_keyboard_if_using_luamacros.ahk
intervallGuiCreate() {
    global guiWidth := 240
    global guiHight := 125
    global guiTitle := "select what to change"
    
    global radioButtonWidth := 65
    global radioButtonHight := 23
    global buttonWidth := 55
    global buttonHight := 23
    
    global currentPage := 0
    
    Gui Add, Radio, x9 y50 w%radioButtonWidth% h%radioButtonHight% Checked, Leftclick
    Gui Add, Radio, x9 y75 w%radioButtonWidth% h%radioButtonHight%, Rightclick
    Gui Add, Button, x120 y50 w%buttonWidth% h%buttonHight% gButtonNext, next
    Gui Add, Text, x5 y8 w269 h38 +0x200, Which intervall would you like to change?
    
    ;creates but hides the controls for the next gui
    
    Gui Add, edit, x9 y50 w100 h%radioButtonHight%
    Gui Add, UpDown,  range1-10000, 100
    GuiControl, hide, edit1
    GuiControl, hide, msctls_updown321
    
    Gui Show, w%guiWidth% h%guiHight%, %guiTitle%
    ;create and show Gui to select which intervall to change
    Return
    ;--------------------Lables--------------------
    ButtonNext:
        gui, Submit, NoHide
        GuiControlGet, leftClickChecked,, Button1,
        GuiControlGet, rightClickChecked,,Button2,
        
        GuiControl, hide, Button1 
        GuiControl, hide, Button2
        GuiControl, show, edit1
        GuiControl, show, msctls_updown321
        
        Guicontrol, text, button3, finish
        Guicontrol, text, static1, How long should the new intervall (in ms) be?
        Gui Show,, change intervall
        
        If (currentPage != 0){
            GuiControlGet, intervall,,edit1
            test := intervall
            If intervall is integer   ;i know that the syntax right here is wierd, but i tried if (intervall is integer) {} but it didnt work. This works so...idk
                If (leftClickChecked == 1) {
                    Gui, Destroy
                    rapidIntervalLeft := intervall
                    return 
                } else if (rightClickChecked == 1) {
                    Gui, Destroy
                    rapidIntervalRight := intervall
                    return 
                } Else {
                    gui, Destroy
                    Return 100
                }
            Else {
                GuiControl, text, static1 , please enter an integer
            }
        }
        currentPage := 1     

    return
    
    GuiClose:
        Gui, destroy
    return        
}    