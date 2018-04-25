# yabasiclibs
extension libraries for yabasic

## Miscellaneous commands

This folder contains a library for yabasic that allows the use of a variety of common Linux commands in text mode.

The library will test for the presence of the required command and will exit gracefully if it is not present

Developed on elementary OS 0.4 "Loki" (i.e. Linux), but it should work on any system that will run both yabasic and the command in question.

The library should exist either in the same folder as your program or in the standard yabasic library location on your system.

To use the library, use the command 

    import linuxmisclib

It is safe to use this library and one of the others in this set concurrently,

### Routines available:

+ **ArraySort**\(a\(\)\) - sorts a ONE-dimensional numeric array. Do not try *a\(\) =  ArraySort\(a\(\))*, it won't work. Your array should be global - I have had inconsistent results with local arrays.
+ **ArraySort\$**\(a\$\(\)\) - sorts a ONE-dimensional string array (case-independent). Do not try a\$\(\) =  ArraySort\$\(a\$\(\)), it won't work. Your array should be global - I have had inconsistent results with local arrays.
+ **IsItATextFile**\(filename$\) - Tests whether a given file is a text file or not. Anytjhing that does not have the string "text" in the results of the *file* command is assumed to be a binary file. This should work fine on Linux but may be problematic on BSD systems (including MacOS?) where this command may reject shell scripts. if you need something more powerful than *file*, I suggest you install *enca*.
+ **OpenInNano$**\(filename$\) - opens a given text file in the *nano* text editor in the same terminal window as your program. Will fail and return an error message if *nano* does not exist on your system. If *filename\$* does not exist, nano will create one in memory and let you save it. For best results your filename should be enclosed in single quotation marks so that it will not get confused by spaces. This routine will not check for that.You may have to CLEAR SCREEN and rebuild your screen afterwards.
+ **StripLFoffSysCmd$**\(val$\) -  Remove linefeeds from the results of a system call. If the results of a System\(\) or System\$\(\) command end on a LF (most do), strip the LF off and return the resulting string. But it can be used for any string that might have a suspected and unwanted LF at the end. If there is no LF present, it does nothing. This may not work on Windows systems, where you also need to test for a CR but we are not writing this library for Windows in any case. 
+ **TestForUtility$**\(filename\$\) - tests whether a given utility exists on your $PATH and is executable. Returns an empty string if the utility exists, and a warning message if it does not \(this reverses the functionality of the Linux *which* command\). This command is used by many of the other routines in this library, and a version of it can be found in the each of the various dialog libraries.

