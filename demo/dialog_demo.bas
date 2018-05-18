#!yabasic
clear screen
Print "this is the dialog demo"
import dialoglib

name$ = InputDlg$("\"Let's get acquainted. What is your name?\"", "\"Who are you?\"", "OK", "Cancel")
welcomemessage$ = EncloseString$("Welcome to the demo program, " + name$ + "\nLet's get this show on the road!", 1)
MessageDlg(welcomemessage$, "Ok")
LikeIt()
TextFileDlg("README.md", "\"The README file\"", "OK")
name$ = PasswordDlg$("\"Please enter your banking password\"", "\"Banking password?\"", "OK","Cancel")
name$= "KIDDING! I was just kidding!\n\nBut for the record, you entered: " + name$
MessageDlg(EncloseString$(name$,1), "ok")
MenuDlg("Remember that clunky text menu at the start?\nIt could look like this ...", "This is a REAL menu!", "Cool!", "No biggie", "dialog#whiptail#kdialog#zenity") 
DCalendarDlg$("\"Dialog can make calendar widgets!\"", "Ok", "Escape")
exit


sub LikeIt()
	if YesNoDlg(EncloseString$("Do you like what you are seeing so far?"), "Yes", "No") then
		MessageDlg(EncloseString$("Cool! Let us see what else there is. \n\nLet\'s take a look at the README.", 1), "ok")
	else
		MessageDlg(EncloseString$("Fair enough. But let us keep trying.  \n\nLet\'s take a look at the README.", 1), "OK")
	endif
end sub

sub EncloseString$(thestring$,type)
	//copied from linuxmisclib, since I want this demo
	//to be independent from it.
	//Encloses a string in either single or double quotes, if it isn't already
	//mostly for use with long filenames that may include spaces.
	//type is either 0 (single quote) or 1 (double quote)
	local type$, type2$
	if type = 0 then
		type$ = chr$(39): type2$ = chr$(34)
	else
		type$ = chr$(34): type2$ = chr$(39)
	endif
	if left$(thestring$,1) <> type$ and left$(thestring$,1) <> type2$ thestring$ = type$ + thestring$
	if right$(thestring$,1) <> type$ and right$(thestring$,1) <> type2$ thestring$ = thestring$ + type$
	return thestring$
end sub
