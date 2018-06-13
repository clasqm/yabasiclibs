#!yabasic
clear screen
import clasquinatorlib
 for f = 1 to 300: print "testing  1 2 3 ";: next f
MessageDlg("This is the clasquinator demo", "Ok")
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
exit

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
		MessageDlg("Cool! Let us see what else there is in the README.", "ok")
	else
		MessageDlg("Fair enough. But let us look at the README.", "Ok")
	endif
	MessageDlg("Oops, I haven't written that yet", "OK")
end sub

