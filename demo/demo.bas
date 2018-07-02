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
			CheckProvider("yad")
			system("yabasic yad_demo.bas")
			break
		case "6"
			system("yabasic clasquinator_demo.bas")
			break
		case "7"
			system("yabasic clasquinator_demo2.bas")
			break
		case "8"
			system("yabasic clasquinator_demo3.bas")
			break
		case "9"
			system("yabasic clasquinator_demo4.bas")
			break
		case "0"
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
	print"Please press keys 1 to 9 (any other key will use the default)"
	print
	print "1. Dialog (default)",
	//print ,
	print "2. Whiptail"
	print
	print "3. Kdialog",
	print ,
	print "4. Zenity"
	print
	print "5. Yad"
	print
	print "6. ---- Clasquinator (plain) ----"
	print
	print "7. ";
	print reverse "        ";
	print " Clasquinator2 ";
	print reverse "       "
	print
	print "8. ";
	print reverse "********";
	print " Clasquinator3 ";
	print reverse "*******"
	print
	print "9. ";
	print reverse "########";
	print " Clasquinator4 ";
	print reverse "#######"
	print
	print "0. EXIT"
	print
end sub

//this does not work!
//thelib$ = provider$ + "lib" 
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
