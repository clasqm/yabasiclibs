#!yabasic
//The limitations of the import statement is the main reason 
//each of the the dialog-providing utilities is run in a standalone
//yabasic app. But to show how the libraries can be run as exactly
//the same code with just a different import statement, all
//the action takes place in the same demolib library.
clear screen
Print "this is the dialog demo"
import linuxmisclib
import dialoglib
import demolib
a$ = inkey$

