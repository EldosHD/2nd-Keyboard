SetWorkingDir, %A_ScriptDir%
global capitalLetters := ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"]
global lowerCaseLetters := ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]



createRandomBitlyLink() {
	randomLinkEnding := ""
	Loop, 6 {

		Random, numberOrLetter, 1, 3

		If (numberOrLetter == 1) 
		{
			Random, randomCharakterIndex, 1, 26    						 ;if charakter should be Capitalletter
			randomCharakter := capitalLetters[randomCharakterIndex]
		} 
		Else If (numberOrLetter == 2) 
		{
			Random, randomCharakterIndex, 1, 26     					 ;if charakter should be lower case letter
			randomCharakter := lowerCaseLetters[randomCharakterIndex]
		} 
		Else If (numberOrLetter == 3)
		{
			Random, randomCharakter, 0, 9    						 ;if charakter should be number
		}
		randomLinkEnding .= randomCharakter
	}
	link .= "http://bitly.com/" . randomLinkEnding
	FileDelete, C:\AHK\2nd-keyboard\LUAMACROS\2nd_keyboard_functions\linkTransfer.txt
	FileAppend, %link%, C:\AHK\2nd-keyboard\LUAMACROS\2nd_keyboard_functions\linkTransfer.txt
}	

createRandomBitlyLink()


