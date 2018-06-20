#!yabasic

import clasquinatorlib
clear screen
//Uncomment the indented lines to run a specific test

//COMMON

//test simple message dialog
	//for f = 1 to 300: print "testing  1 2 3 ";: next f
	//MessageDlg("\"  This is a simple message dialog. Close it with ENTER or O.\"","OK")
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
	//a$ =  InputDlg2$("What is your name?", "Who are you?")
	//b$ = inkey$
	//print a$

//test PasswordDlg
	//print PasswordDlg$("\"You can enter a password here\"","\"Password entry\"", "Ok", "Cancel")

//test GetDirDlg$()
	//for f = 1 to 300: print "testing  1 2 3 ";: next f
	//a$ = GetDirDlg$("Pick a folder", "Which directory would you like to see?","")
	//if a$ <> "" then
	//	b$ = inkey$ //just to see the screen being restored
	//	clear screen
	//	print at(0,5) "The contents of " + a$ + ": "
	//	if peek$("os") = "unix" then
	//		b$ = system$("ls \"" + a$ + "\""): print b$ //linux
	//	else
	//		b$ = system$("dir /w \"" + a$ + "\"")  //windows
	//	endif
	//	b$ = inkey$
	//else
	//	b$ = inkey$ //just to see the screen being restored
	//	clear screen
	//	print at(0,5) "No directories to select!"
	//	b$ = inkey$
	//endif

//test GetFileDlg$()
	//for f = 1 to 300: print "testing  1 2 3 ";: next f
	//a$ = GetFileDlg$("Pick a file", "Please select a file?",".")
	//if a$ <> "" then
	//	b$ = inkey$ //just to see the screen being restored
	//	clear screen
	//	print at(0,5) "You chose " + a$
	//	b$ = inkey$
	//else
	//	b$ = inkey$ //just to see the screen being restored
	//	clear screen
	//	print at(0,5) "No files to select!"
	//	b$ = inkey$
	//endif


//test MakeDirDlg$()
	//for f = 1 to 300: print "testing  1 2 3 ";: next f
	//a$ = MakeDirDlg$("Create a folder", "Which directory would you like to create?","./test")
	//b$ = inkey$ //just to see the screen being restored
	//clear screen
	//print at(0,5) "you would have created the directory ./test/" + a$
	//b$ = inkey$

//test MakeFileDlg$()
	//for f = 1 to 300: print "testing  1 2 3 ";: next f
	//a$ = MakeFileDlg$("Create a file", "Please type a new filename","~")
	//b$ = inkey$ //just to see the screen being restored
	//clear screen
	//print at(0,5) "you would have created the file ~/" + a$
	//b$ = inkey$ 

//test MenuDlg$  this tests for the H in the Help item only
//see the demo program for more extensive use
	//for f = 1 to 300: print "testing  1 2 3 ";: next f
	//a$ = MenuDlg$("Main Menu", "File#Edit#Help", 0)
	//b$ = inkey$ //just to see the screen being restored
	//if a$ = "h" then
	//	a$ = MenuDlg$("Help Menu", "Help#About", 1, "File#Edit#Help")
	//	b$ = inkey$ //just to see the screen being restored
	//endif

//test StringDisplayDlg
	//for f = 1 to 300: print "testing123";: next f
	//a$ = "This is the string to display. Let's make it long so that wordwrap is enforced."
	//StringDisplayDlg(a$, "String Display Test", "OK")
	//b$ = inkey$ //just to see the screen being restored

//test TextFiledlg
	for f = 1 to 300: print "testing 1 2 3 ";: next f
	TextFileDlg2("./pg4.txt", "The Gettysburg Address", "OK")
	b$ = inkey$ //just to see the screen being restored

//test WaitDlg
	//for f = 1 to 300: print "testing 1 2 3 ";: next f
	//''WaitDlg(1, "This is 30 characters of text.")
	//WaitDlg(1, "This is more than 30 characters of text.")
	//WaitDlg(1, "Please wait")	
	//wait 4 //this is where you would do other stuff
	//WaitDlg(0)
	//b$ = inkey$ //just to see the screen being restored






exit