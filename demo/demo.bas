#!/usr/local/bin/yabasic

import linuxmisclib

do
	InitialMenu()
	choice$ = inkey$
	switch choice$
		case "2"
			CheckProvider("whiptail")
			system("yabasic whiptail_demo.bas")
			break
		case "3"
			CheckProvider("kdialog")
			system("yabasic kdialog_demo.bas")
			break
		case "4"
			CheckProvider("zenity")
			system("yabasic zenity_demo.bas")
			break
		case "5"
			exit
			break
		default
			CheckProvider("dialog")
			system("yabasic dialog_demo.bas")
			break
	end switch
loop

sub CheckProvider(provider$)
	print "You chose " + provider$ + ". Cool!"
	print
	Print "Let's just check if that is on your system ..."
	print
	if TestForUtility$(provider$) <> "" then
		Print "Sorry, you need to install " + provider$ + "on your system before you can use it."
		print:print
		end
	endif
end sub

sub InitialMenu()
	clear screen
	Print
	print "Which of the following systems would you like to demo?"
	print "(Don't worry, this is the only time you will see such a clunky menu!)"
	print
	print"Please press keys 1 to 5"
	print "(any other key will use the default)"
	print
	print "1. Dialog (default)"
	print "2. Whiptail"
	print "3. Kdialog"
	Print "4. Zenity"
	print
	print "5. EXIT"
	print
end sub

//thelib$ = provider$ + "lib" //this does not work!
// import thelib$ 

//You'd think this would work, but nooooo ...
//switch choice$
//	case "1"
//		import dialoglib
//		break
//	case "2"
//		import whiptaillib
//		break
//	case "3"
//		import kdialoglib
//		break
//	case "4"
//		import zenitylib
//		break
//end switch
//So we'll just have to do this the hard way
//and call up a new yabasic program
//in a new process.

