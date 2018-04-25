# yabasiclibs
extension libraries for yabasic

## whiptail

This folder contains a library for yabasic that allows the use of the Linux command *whiptail* to display a variety of dialogs in text mode.

The library will test for the presence of the whiptail command and will exit gracefully if it is not present

Developed on elementary OS 0.4 "Loki" (i.e. Linux), but it should work on any system that will run both yabasic and the whiptail command.

The library should exist either in the same folder as your program or in the standard yabasic library location on your system.

To use the library, use the command 

    import whiptaillib

You should **not** use this library and one of the others in this set that provides dialogs concurrently, because they replicate subroutine names. Pick the right one for your program and stick with it!

### Commands available:



