#!yabasic

import zenitylib
import linuxmisclib

clear screen

//Uncomment the indented lines to run a specific test

//COMMON

//COMMON

//test for existence of dialog utility
	//a$ = TestForDialogUtility$()
	//if a$ ="" then
		//print "Yes, it exists"
	//else
		//print a$
	//endif
	
//test simple message dialog
	//MessageDlg(EncloseText$("This is a simple message dialog. Close it with ENTER or try clicking on OK."), "\"Very well\"")
	//clear screen
	//print "message demo is done"
	//a$ = inkey$

//test yesno dialog
	//if YesNoDlg("\"Can you see me?\"", "Yes!", "Nope") then
	//	clear screen
	//	print "Eureka!"
	//else
	//	clear screen
	//	print "bummer"
	//endif
	//a$ = inkey$
	
//test TextFileDlg
	//TextFileDlg("README.md", "\"The README for this library\"", "okidoki")

// test InputDlg$
	//print  InputDlg$("\"What is your name?\"", "\"Who are you?\"", "Accept", "Cancel")

//test PasswordDlg
	//print PasswordDlg$("\"You can enter a password here\"","\"Password entry\"", "Ok", "Cancel")
	
//test MenuDlg
	//print "main program"
	//a = MenuDlg("This is a menu", "A Menu!","Accept", "Deny", "Science#Religion#Magic#All of the above"):print a
	//a$ = MenuDlg$("This is a menu", "A Menu!","Accept", "Deny", "Science#Religion#Magic#All of the above"):print a$

//test ZCalendarDlg$
	//print ZCalendarDlg$("\"Pick a date\"", "Pick", "Escape")

//test RadioDlg
	//a = RadioDlg("This is a menu", "A Menu!","Accept", "Deny", "Science#Religion#Magic#All of the above", "Magic"): print a
	//a$ = RadioDlg$("This is a menu", "A Menu!","Accept", "Deny", "Science#Religion#Magic#All of the above", "Science"):print a$	

//test ZOpenFileDlg
	a$ = StripLFoffSysCmd$(ZOpenFileDlg$())
	//clear screen: if a$ <> "" system("cat " + EncloseText$(a$))

//test ZSaveFileDlg
	//a$ = StripLFoffSysCmd$(ZSaveFileDlg$())
	//clear screen:  if a$ <> "" system("cat " + EncloseText$(a$))

//test ZGetDirDlg
	//a$ = StripLFoffSysCmd$(ZGetDirDlg$())
	//clear screen:  if a$ <> "" print a$
