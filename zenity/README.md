# zenity

This folder contains a library for yabasic that allows the use of the Linux command *zenity* to display a variety of dialogs in graphical mode.

The library will test for the presence of the zenity command and will exit gracefully if it is not present. It is a GTK program, so the colours and styles will follow that of your GNOME defaults.

The entire set of libraries focuses on sane defaults and getting basic functionality into yabasic. There are a lot of options that will not be implemented!

Developed on elementary OS 0.4 "Loki" (i.e. Linux), but it should work on any system that will run both yabasic and the zenity command.

The library should exist either in the same folder as your program or in the standard yabasic library location on your system.

To use the library, use the command 

    import zenitylib

You should **not** use this library and one of the others that provides dialogs in this set concurrently, because they replicate subroutine names. Pick the right one for your program and stick with it!

## Routines available:

### Common Routines

**These routines are available on any of the four dialog-providing libraries.**

+ **ClearDlg**\(\) - on dialog and whiptail, this clears the dialog from your terminal. On zenity and kdialog, dummy routines are provided for compatibility so that you do not need to rewrite your code.

### Zenity-specific routines

**These routines will only work with zenity.**




