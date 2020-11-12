#SingleInstance, Force
    SendMode Input
SetWorkingDir, %A_ScriptDir%


;Just declaring variables in an external file didnt work for me. So I wrote this class.


;--------------------Paths---------------------

class paths {
    
    ;credit to https://www.autohotkey.com/boards/viewtopic.php?t=34760&p=275168 for the downloads folder.
    ;i have no idea how, but it opens the downloads folder
    runDownloadsPath(){
        Run shell:::{374DE290-123F-4565-9164-39C4925E467B}
    }    
    getMinecraftPath() {
        minecraftPath := A_AppData . "\.minecraft\"
        Return minecraftPath
    }
    getMinecraftModsPath() {
        minecraftMods := A_AppData . "\.minecraft\mods"
        Return minecraftMods
    }
    getHotswapModsPath() {
        hotswapMods := A_Desktop . "\Hotswap Mods\"
        Return hotswapMods
    }
    getOneDrivePath(){
        onedrive := "C:\Users\" . A_UserName . "\Onedrive\"
        Return onedrive
    }
    getWorkPath(){
        work :=  paths.getOneDrivePath() . "Uni\"
        Return work
    }
    getStartupPath(){
        startup := A_StartMenu
        Return startup
    }
    getLuamacrosPath(){
        luamacros := "C:\AHK\2nd-keyboard\LUAMACROS"
        Return luamacros
    }
    getDocumentsPath(){
        myDocuments := A_MyDocuments
        Return myDocuments
    }
    getWindowSpyPath(){
        windowSpy := A_ProgramFiles . "\Autohotkey\WindowSpy.ahk"
        Return windowSpy
    }
    getClientForLampPath(){
        clientForLamp := A_Desktop . "\Programming\clientFuerLampe.py"
        Return clientForLamp
    }
    getLuamacrosScriptPath(){
        luamacrosScript := paths.getLuamacrosPath() . "\SECOND_KEYBOARD_script_for_LUA_MACROS.lua"
        Return  luamacrosScript
    }
    getTerminalPath(){
        terminal :=  A_AppData . "\Microsoft\Windows\Start Menu\Programs\Windows Terminal"
        Return terminal
    }
}
