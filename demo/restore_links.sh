#!/bin/bash
#something (probably git) is changing the links 
#to the libraries to actual copies of the files
#this script fixes that.
#
#Update, no actually this seems to happen when I
#edit in windows, so it is more likely dropbox
#that is doing this
#
#edit the first line as required
cd /home/michel/Dropbox/git/yabasiclibs/demo/
ln -f -s -r ../whiptail/whiptaillib.yab .
ln -f -s -r ../dialog/dialoglib.yab .
ln -f -s -r ../linuxmisc/linuxmisclib.yab .
ln -f -s -r ../zenity/zenitylib.yab .
ln -f -s -r ../yad/yadlib.yab .
ln -f -s -r ../kdialog/kdialoglib.yab .
ln -f -s -r ../clasquinator/clasquinatorlib.yab .
ln -f -s -r ../clasquinator/pg4.txt .
ln -f -s -r ../compat/compatlib.yab .