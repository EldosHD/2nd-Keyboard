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


ClickItRight:
    Click Right
return 

minecraftDungonsAFKLable:
	Send {1}{2}{3}{e}
return 