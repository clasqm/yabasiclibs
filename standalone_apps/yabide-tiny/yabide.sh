#!/bin/bash

#YABIDE.SH

#This is my homebrewed IDE for yabasic
#It requires few external dependencies:

#yabasic (well, duh)
#tilde text editor (but you can easily change it to your favourite editor)
#egrep
#tput, but that is part of ncurses, so you should have it already if you have yabasic
#smenu - available in some linux distros or easily compiled from source at https://github.com/p-gen/smenu

#bugs: rivalling the Amazon rainforest. I am a better yabasic than bash programmer, and that's not saying much!

#Future plans: None, but who knows what brainwave I may have one day?

#With thanks to StackEchange, LinuxQuestions ...

MENU="List Chdir Open Edit Run Bind Exit"

#feed parameter into a variable
#if no parameter, create a dummy file, so we don't have to use a dozen IF..THEN exception catchers

if [ $# -ne 0 ];then
	FILE1=$(echo $1)
else
	touch /tmp/dummyfile
	FILE1=/tmp/dummyfile
fi

#setting up ...
clear
#get terminal size
read lines columns < <(stty size)
scrolllimit=$((lines - 3))
#Set scroll area 
printf "\e[2;$linesr"
#move out of nonscrolling area NOTE: tput has X and Y transposed. Insanity rules OK
tput cup 3 0
#initial display
head -n $scrolllimit $FILE1
#dummy value to initialise variable we will use later
#shouldn't be necessary but ...
CMD=hold
#meat and potatoes coming up
# could write a separate CASE staement for Exit, I suppose ...
#nahh
while [ $CMD != Exit ]
	do
		tput cup 0 0
		CMD=$(echo $MENU | smenu)
		case $CMD in
			#list as in ls, not list as in yabasic
			"List") 
				clear
				tput cup 0 0
				#dummy menu just for looks
				echo $MENU
				tput cup 3 0
				ls .
				echo
				#why can't bash have a decent INKEYS command?
				read -n 1 -s -r -p "Press any key to continue"
				;;
			"Chdir")
				clear
				tput cup 0 0
				echo $MENU
				tput cup 3 0
				NEWDIR=$(echo .. $(for f in *;do if [[ -d $f  ]]; then echo $f;fi; done;)|smenu)
				cd $NEWDIR
				#some lines swiped from the List section
				#a real programmer would have made it a function
				clear
				tput cup 0 0
				echo $MENU
				tput cup 3 0
				ls .
				echo
				read -n 1 -s -r -p "Press any key to continue"
				;;
			"Open")
				clear
				tput cup 0 0
				echo $MENU
				tput cup 3 0
				FILE1=$(echo $(ls | egrep '\.bas$|\.yab$|\.sh$'|smenu))
				clear
				tput cup 3 0
				head -n $scrolllimit $FILE1
				;;
			"Edit")
				#substitute your favourite editor below
				tilde $FILE1
				;;
			"Run") 
				printf '\e[;r'
				clear
				yabasic $FILE1
				read -n 1 -s -r -p "Press any key to continue"
				printf "\e[2;$linesr"
				clear
				
				;;
			"Bind") 
				clear
				tput cup 3 0
				echo "Name of bound file?"
				read boundname
				if [ -e $boundname ];then
					rm -f $boundname
				fi
				yabasic --bind $boundname $FILE1
				chmod --verbose +x $boundname
				;;
			#"Help")
			#this works, but crashes the script on exit
			#	clear
			#	/usr/bin/env cheatsheet
			#	clear
			#	;;
			*)
				;;
		esac
	done
#restore scrollable area of screen
printf '\e[;r'
clear
exit
