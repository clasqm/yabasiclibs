# yabasiclibs
extension libraries for yabasic

## Miscellaneous commands

This folder contains a library for yabasic that allows the use of a variety of common Linux commands in text mode.

The library will test for the presence of the required command and will exit gracefully if it is not present

Developed on elementary OS 0.4 "Loki" (i.e. Linux), but it should work on any system that will run both yabasic and the command in question.

The library should exist either in the same folder as your program or in the standard yabasic library location on your system.

To use the library, use the command 

    import linuxmisclib

it is safe to use this library and one of the others in this set concurrently,

### Commands available:

+ **OpenInNano**(filename$) - opens a given text file in the nano text editor.

