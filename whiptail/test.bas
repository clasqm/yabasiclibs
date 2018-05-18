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
	//MessageDlg("\"This is a simple message dialog. Close it with ENTER.\"","okidoki")
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

// test InputDlg$
	//print  InputDlg$("\"What is your name?\"", "\"Who are you?\"", "Accept", "Cancel")

//test PasswordDlg
	//print PasswordDlg$("\"You can enter a password here\"","\"Password entry\"", "Ok", "Cancel")

//test MenuDlg
	//a = MenuDlg("This is a menu", "A Menu!","Accept", "Deny", "Science#Religion#Magic#All of the above"): print a
	//a$ = MenuDlg$("This is a menu", "A Menu!","Accept", "Deny", "Science#Religion#Magic#All of the above"):print a$
