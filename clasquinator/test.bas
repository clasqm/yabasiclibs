#!yabasic

import clasquinatorlib
clear screen
//Uncomment the indented lines to run a specific test

//COMMON

//test simple message dialog
	//for f = 1 to 300: print "testing  1 2 3 ";: next f
	//MessageDlg("\"  This is a simple message dialog. Close it with ENTER or o.\"","OK")
	//a$ = inkey$
	
//test yesno dialog
	//for f = 1 to 300: print "testing  1 2 3 ";: next f
	//if YesNoDlg("Can you see this? Press Y if you can.", "Yes!", "No") then
	//	print colour ("yellow") at (0,7)"      Eureka!     "
	//else
	//	print colour ("yellow") at (0,7)"      bummer     "
	//endif
	//a$ = inkey$

//test TextFileDlg
	//TextFileDlg("README.md", "\"The README for this library\"","\"All done!\"")

// test InputDlg$
	//for f = 1 to 300: print "testing  1 2 3 ";: next f
	//a$ =  InputDlg$("What is your name?", "Who are you?")
	//b$ = inkey$
	//print a$

//test PasswordDlg
	//print PasswordDlg$("\"You can enter a password here\"","\"Password entry\"", "Ok", "Cancel")

//test MenuDlg
	//a = MenuDlg("This is a menu", "A Menu!","Accept", "Deny", "Science#Religion#Magic#All of the above"): print a
	//a$ = MenuDlg$("This is a menu", "A Menu!","Accept", "Deny", "Science#Religion#Magic#All of the above"):print a$

//test RadioDlg
	a = RadioDlg("This is a menu", "A Menu!","Accept", "Deny", "Science#Religion#Magic#All of the above", "Magic"): print a
	//a$ = RadioDlg$("This is a menu", "A Menu!","Accept", "Deny", "Science#Religion#Magic#All of the above", "Science"):print a$	

exit