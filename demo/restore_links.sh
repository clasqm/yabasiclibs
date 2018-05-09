#!bash
#something (probably git) is changing the links 
#to the libraries to actual copies of the files
#this script fixes that.
ln -f -s -r ../whiptail/whiptaillib.yab .
ln -f -s -r ../dialog/dialoglib.yab .
ln -f -s -r ../linuxmisc/linuxmisclib.yab .
ln -f -s -r ../zenity/zenitylib.yab .
ln -f -s -r ../kdialog/kdialoglib.yab .
#ln -f -s -r ../clasquinator/clasquinatorlib.yab .