#!yabasic

import whiptaillib

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
	//MessageDlg("\"This is a simple message dialog. Close it with ENTER.\"")
	//clear screen
	//print "message demo is done"
	//a$ = inkey$

//test yesno dialog
	//if YesNoDlg("\"Can you see me?\"", "Yes!", "No") then
	//	clear screen
	//	print "Eureka!"
	//else
	//	clear screen
	//	print "bummer"
	//endif
	//a$ = inkey$

//test TextFileDlg
	//TextFileDlg("README.md", "\"The README for this library\"","\"All done!\"")


exit