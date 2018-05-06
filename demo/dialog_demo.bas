#!yabasic
clear screen
Print "this is the dialog demo"
import dialoglib
print "Let's get acquainted."
line input "What is your name?\n" name$
welcomemessage$ = EncloseString$("Welcome to the demo program, " + name$ + "\nLet's get this show on the road!", 1)
MessageDlg(welcomemessage$)
LikeIt()
TextFileDlg("README.md", "\"The README file\"", "OK")
exit

sub LikeIt()
	if YesNoDlg(EncloseString$("Do you like what you are seeing so far?"), "Yes", "No") then
		MessageDlg(EncloseString$("Cool! Let us see what else there is. \n\nLet\'s take a look at the README.", 1))
	else
		MessageDlg(EncloseString$("Fair enough. But let us keep trying.  \n\nLet\'s take a look at the README.", 1))
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
