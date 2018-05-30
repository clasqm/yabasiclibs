#!yabasic
clear screen
Print "this is the kdialog demo"
import kdialoglib

name$ = InputDlg$("\"Let's get acquainted. What is your name?\"", "\"Who are you?\"", "OK", "Cancel")
welcomemessage$ = EncloseText$("Welcome to the demo program, " + name$ + "\nLet's get this show on the road!")
MessageDlg(welcomemessage$, "Ok")
LikeIt()
TextFileDlg("README.md", "\"The README file\"", "OK")
name$ = PasswordDlg$("\"Please enter your banking password\"", "\"Banking password?\"", "OK","Cancel")
name$= "KIDDING! I was just kidding!\n\nBut for the record, you entered: " + name$
MessageDlg(EncloseText$(name$), "Ok")
MenuDlg("Remember that clunky text menu at the start?\nIt could look like this ...", "This is a REAL menu!", "Cool!", "No biggie", "dialog#whiptail#kdialog#zenity")
RadioDlg("Or like this ...", "This is a Radio menu!", "Cool!", "No biggie", "dialog#whiptail#kdialog#zenity", "kdialog") 
KCalendarDlg$("\"kdialog can create clendar widgets!\"")
exit

sub LikeIt()
	if YesNoDlg(EncloseText$("Do you like what you are seeing so far?"), "Yes", "No") then
		MessageDlg(EncloseText$("Cool! Let us see what else there is. \n\nLet\'s take a look at the README."), "ok")
	else
		MessageDlg(EncloseText$("Fair enough. But let us keep trying.  \n\nLet\'s take a look at the README."), "Ok")
	endif
end sub
