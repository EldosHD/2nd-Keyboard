

lMBRapidPress(leftClickOn) {
    if (leftClickOn == 1) 
    {
        Click
        SetTimer, ClickIt, %rapidIntervalLeft%
    }
    else 
    {
        SetTimer, ClickIt, Off 
    }

}

ClickIt:
    Click 
return 

RMBRapidPress(rightClickOn) {
    if (rightClickOn == 1) 
    {
        Click Right
        SetTimer, ClickItRight, %rapidIntervalRight%
    }
    else 
    {
        SetTimer, ClickItRight, Off 
    }

}

minecraftDungonsAFK(minecraftDungonsAFKVar) {
	if (minecraftDungonsAFKVar == 1) {
		SetTimer, minecraftDungonsAFKLable, 1000
	}
	else 
	{
		SetTimer, minecraftDungonsAFKLable, off
	}
}


antiAFK(antiAFKVar) {
    if (antiAFKVar == 1) {
		SetTimer, antiAFKLable, %antiAFKDelay%
	}
	else 
	{
		SetTimer, antiAFKLable, off
	}
}

antiAFKLable:
    Random, randomKey, 0, 3
    Random, randomKeyDelay, 100, 200
    If (randomKey == 0) {
        Send, {w Down}
        Sleep, %randomKeyDelay%
        Send, {w up}
    } Else If (randomKey == 1) {
        Send, {a Down}
        Sleep, %randomKeyDelay%
        Send, {a up}    
    } Else If (randomKey == 2) {
        Send, {s Down}
        Sleep, %randomKeyDelay%
        Send, {s up}  
    } Else If (randomKey == 3) {
        Send, {d Down}
        Sleep, %randomKeyDelay%
        Send, {d up}  
    }
    Random, antiAFKDelayVar, 1000, 10000
    antiAFKDelay := antiAFKDelayVar
return

ctrlQCrafting(ctrlQCraftingOn) {
    if (ctrlQCraftingOn == 1) 
    {
        
        Click
        SetTimer, sendQ, 20
    }
    else 
    {
        SetTimer, sendQ, Off 
        send, {ctrl up}
    }

}

sendQ:
    send, {Ctrl Down}
    send, {Q down}
    send, {Ctrl Down}
return

ClickItRight:
    Click Right
return 

minecraftDungonsAFKLable:
	Send {1}{2}{3}{e}
return 