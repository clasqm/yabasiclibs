#!/usr/local/bin/yabasic

//Uncomment the indented lines to run a specific test

import linuxmisclib

//Test of TestForUtility$
//This should fail
	//print TestForUtility$("blablabla")

//Test of IsItATextFile
	//if IsItATextFile("test.txt") print "yes, it is a text file"
	//if not IsItATextFile("/usr/local/bin/yabasic") print "are you kidding me?"

//Test of OpenInNano$
//this should work
	//OpenInNano$("test.txt")
	//deliberate error -this file should not exist, but nano will create one in memory
	//and you can save it
	//OpenInNano$("")
	
//Test of OpenInJed
//this should work
	//OpeninJed$("test.txt")
	//deliberate error -this file should not exist, but nano will create one in memory
	//and you can save it
	//OpeninJed$("testx.txt")

//Testing Arraysort()
	//dim a(3)
	//a(1) = 34: a(2) =2: a(3) = 456
	//print "Before: ": for f = 1 to 3: print a(f),: next f:print
	//ArraySort(a())
	//print "After: ":for f = 1 to 3: print a(f),: next f:print

//Testing Arraysort$()
	//dim a$(3)
	//a$(1) = "Mouse": a$(2) ="dog": a$(3) = "cat"
	//print "Before: ": for f = 1 to 3: print a$(f),: next f:print
	//ArraySort$(a$())
	//print "After: ":for f = 1 to 3: print a$(f),: next f:print

//Test FileExists
	//if FileExists("/usr/local/bin/yabasic") then
		//print "well, yabasic exists ..."
	//else
		//print "where did you install that sucker?"
	//endif
	//if FileExists("test.txt") print "and we can also find stuff in our local directory."

//test FileorDir()
	//if FileorDir("/usr/local/bin/") then
		//print "it's a directory!"
	//else
		//print "It's a file!"
	//endif

//test FileorLink()
	//if FileorLink("test.txt") then
		//print "it's a symlink!"
	//else
		//print "It's a file!"
	//endif

//Test IsFileZeroByte()
	//system("touch test2.txt")
	//if IsFileZeroByte("test2.txt") print "Yes, zero bytes found"
	//print "writing ...":handle = open("test2.txt", "w"): print #handle "this is a test": close handle
	//if IsFileZeroByte("test2.txt") = 0 print "hey, there are bytes now!"
	//system("rm test2.txt")

//test WhereAmI$()
	//print WhereAmI$()
	
//test EncloseString$
	//print EncloseString$("This should be enclosed with single quotes", 0)
	//print EncloseString$("This should be enclosed with double quotes", 1)

//Test URL-loading routines.
//Note the different methods to test the availability of a URL
//before you display it in one of the available browsers.
	//if URLExist("http://clasquin-johnson.co.za/michel/") = 1 OpeninW3m$("http://clasquin-johnson.co.za/michel/")
	//if URLExist$("http://clasquin-johnson.co.za/michel/") = "1" OpeninLinks$("http://clasquin-johnson.co.za/michel/")
	//if URLExist("http://clasquin-johnson.co.za/michel/") OpeninLynx$("http://clasquin-johnson.co.za/michel/")
	//if URLExist("http://clasquin-johnson.co.za/michel/") = true OpeninElinks$("http://clasquin-johnson.co.za/michel/")

//test miscellaneous utilities
	//OpenCalcurse$()
	//OpenTinaS()
	//OpeninTpp$("/usr/share/doc/tpp/examples/tpp-features.tpp")
	//OpeninWordgrinder$("example.wg")
	//OpenNano$()
	//OpenJed$()
	//OpenWordgrinder$()
	//ConvertFile$("README.md", "~/Downloads/readme.docx")
	//ConvertFile2PDF$("README.md", "~/Downloads/readme.pdf")
	