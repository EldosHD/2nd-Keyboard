
y:=522
x:=0

clickFirst() {
    x:=857
    MouseMove, %x%, %y% ,0
    click
    Sleep, 50
}

clickSecond() {
    x:=891
    Click, %x%, %y%
    Sleep, 50
}

clickThird() {
    x:=903
    Click, %x%, %y%
    Sleep, 50
}

clickFourth() {
    x:=924
    Click, %x%, %y%
    Sleep, 50
}

clickFifth() {
    x:=964
    Click, %x%, %y%
    Sleep, 50
}

clickSixth() {
    x:=998
    Click, %x%, %y%
    Sleep, 50
}

clickSeventh() {
    x:=1031
    Click, %x%, %y%
    Sleep, 50
}

clickSeventh2() {
    x:=1075
    Click, %x%, %y%
    Sleep, 50
}



^+v::
    click,Right
    sleep, 1000
    
    clickFirst()
Return


