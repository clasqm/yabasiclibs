#!yabasic
clear screen
import clasquinatorlib
 for f = 1 to 400: print "testing  1 2 3 ";: next f
MessageDlg("This is the clasquinator demo", "Ok")
ShowIntro()
name$ = InputDlg$("Let's get acquainted. What is your name?", "Who are you?", "OK", "Cancel")
welcomemessage$ = "Welcome, " + name$ + ". Let's get this show on the road!"
MessageDlg(welcomemessage$, "Ok")
LikeIt()
//TextFileDlg("README.md", "The README file", "OK")
name$ = PasswordDlg$("Please enter your banking password", "Banking password?", "OK","Cancel")
MessageDlg("KIDDING! I was just kidding!", "Haha")
name$= "But for the record, you entered: " + name$
MessageDlg(name$, "Ok")
name$ ="Remember that clunky text menu at the start? It could look much nicer now."
MessageDlg(name$, "Ok")
while(a$ <> "q")
	a$ = ShowMenu$()
wend
MessageDlg("Unfortunately, clasquinator has no calendar widget ATM", "Ok")
MessageDlg("You can select a directory ...", "OK")
a$ = GetDirDlg$("Pick a folder (case-sensitive!)", "Which directory would you like to choose?","..")
MessageDlg("You chose " + a$ + ". Good choice!", "OK")
b$ = GetFileDlg$("Pick a file (case-sensitive!)", "Now let's pick a file in that directory","../" + a$)
MessageDlg("You chose " + b$ + " in "+ a$ + ". Another good choice!", "OK")
WaitDlg(1,"Thank you for playing!")
pause 4 :WaitDlg(0)
if peek$("os") = "unix" then
	system("../standalone_apps/yabscreenfetch")
	b$ = inkey$
endif
exit

sub ShowIntro()
	local a$, b$
	restore welcome
	while(b$ <> "end_of_data")
	read b$
	if b$ <> "end_of_data" a$ = a$ + b$ + " # # "
	wend
	 StringDisplayDlg(a$, "Welcome!", "Ok")
end sub

sub ShowMenu$()
local a$, b$, c
a$ =MenuDlg$("Main Menu", "Graphical#Textual#Quit", 0)
switch a$
	case "g"
		b$ =MenuDlg$("Graphical Menu", "Kdialog#Zenity", 1, "Graphical#Textual#Quit")
		switch b$
			case "k"
				MessageDlg("You chose Kdialog", "OK")
				break
			case "z"
				MessageDlg("You chose Zenity", "OK")
				break
		end switch
		break
	case "t"
		b$ =SubMenuDlg$("Textual Menu", "Clasquinator#Dialog#Whiptail", "Graphical#Textual#Quit")
		switch b$
			case "c"
				MessageDlg("You chose Clasquinator", "OK")
				break
			case "d"
				MessageDlg("You chose Dialog", "OK")
				break
			case "w"
				MessageDlg("You chose Whiptail", "OK")
				break
		end switch
		break
	default
		c = YesNoDlg("Quitting the menu demo so soon?", "Yes", "No")
		if c = 0 a$ = ""
		break
end switch
return a$
end sub

sub LikeIt()
	if YesNoDlg("Do you like what you are seeing so far?", "Yes", "No") then
		MessageDlg("Cool! Let's throw up a text file.", "ok")
	else
		MessageDlg("Fair enough. But let's throw up a text file.", "Ok")
	endif
	TextFileDlg("pg4.txt", "The Gettysburg Address", "OK")
end sub

label welcome
data "This folder contains a library for yabasic that allows yabasic to display a variety of dialogs in text mode without making use of external commands."
data "Some routines will perhaps also be made available in graphics mode. Maybe, one day. I am a better text mode programmer, what can I say? "
data "The library is written as a textmode application and must be run in a terminal. It will not be useful in a headless script."
data "The entire set of libraries focuses on sane defaults and getting basic functionality into yabasic."
data "Developed on elementary OS 0.4 'Loki' (i.e. Linux), but it should work on any UNIX-like system that will run yabasic. Testing on Windows has been far more sketchy, since I don't have a windows box here, but I did what I could in my lunch break at work ;-)."
data "The library should exist either in the same folder as your program (symlinks work) or in the standard yabasic library location on your system."
data "You should not use this library and one of the others in this set that provides dialogs concurrently, because they replicate subroutine names. Pick the right one for your program and stick with it!"
data "end_of_data"