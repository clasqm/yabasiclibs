#!yabasic
clear screen
import clasquinatorlib
 
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
//MenuDlg("Remember that clunky text menu at the start?It could look like this ...", "This is a REAL menu!", "Cool!", "No biggie", "dialog#whiptail#kdialog#zenity") 
MessageDlg("Unfortunately, clasquinator has no calendar widget ATM", "Ok")
MessageDlg("You can select a directory ...", "OK")
a$ = GetDirDlg$("Pick a folder", "Which directory would you like to choose?","..")
MessageDlg(a$ + ". Good choice!", "OK")
a$ = GetFileDlg$("Pick a ffile", "Now let's pick a file in that directory","../" + a$)
MessageDlg(a$ + ". Another good choice!", "OK")
exit

sub LikeIt()
	if YesNoDlg("Do you like what you are seeing so far?", "Yes", "No") then
		MessageDlg("Cool! Let us see what else there is in the README.", "ok")
	else
		MessageDlg("Fair enough. But let us look at the README.", "Ok")
	endif
	MessageDlg("Oops, I haven't written that yet", "OK")
end sub

