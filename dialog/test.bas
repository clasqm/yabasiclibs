#!yabasic

import dialoglib

//Uncomment the indented lines to run a specific test

//COMMON

//test for existence of dialog utility
	//a$ = TestForDialogUtility$()
	//if a$ ="" then
		//print "Yes, it exists"
	//else
		//print a$
	//endif
	
//test simple message dialog
	MessageDlg("\"This is a simple message dialog. Close it with ENTER or try clicking on OK.\"")
	//ClearDlg()
	Clear Screen
	print "message demo is done"
	a$ = inkey$
exit