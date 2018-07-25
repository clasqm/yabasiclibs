# yadlib.yab

## yad has stopped working on my development system - development stalled until I can figure out what is going on.

A yabasic library (c) Michel Clasquin-Johnson 2018.  
Licensed according to the MIT license

If you are reading this as a man page, be advised that you can see it in glorious HTML, with pictures even, at https://clasqm.github.io/

This library for *yabasic* allows the use of the Linux command *yad* to display a variety of dialogs in graphical mode.

The library will test for the presence of the yad command and will exit gracefully if it is not present.yad is a GTK program, so the colours and styles will follow that of your GNOME defaults. It may also take a moment or two to pop up - there are a lot of libraries to load! If speed is of the essence, stick to the *dialog*, *clasquinator* or *whiptail* libraries.

The entire set of libraries focuses on sane defaults and getting basic functionality into yabasic. There are a lot of options that will not be implemented!

The images below are for illustration only. The exact appearance of the dialogs will depend on your system settings.

Developed on elementary OS 0.4 "Loki" and Lubuntu 18.04 (i.e. Linux), but it should work on any system that will run both yabasic and the yad command.

The library should exist either in the same folder as your program or in the standard yabasic library location on your system.

To use the library, use the command

    import yadlib

If you would rather cut and paste these subroutines into your own program rather than importing this rather large library, or create your own, smaller library with just the routines you need, be my guest (I *would* appreciate a note of acknowledgement in your code). But some subroutines require supporting routines that you will find at the end of this library. You will have to include those as well.

You should **not** use this library and one of the others that provides dialogs in this set concurrently, because they replicate subroutine names. Pick the right one for your program and stick with it!

*Yad* is a fork of *zenity* and this early version of the library just adapts the routines in *zenitylib*. Later on, we will dig into *yad*'s unique features.

### Common Routines

**These routines are available on any of the four dialog-providing libraries.**

+ **ClearDlg**() - on dialog and whiptail, this clears the dialog from your terminal. Same as the yabasic command CLEAR SCREEN, but may work better if you are expecting to issue another Linux command immediately. On yad, zenity and kdialog, dummy routines are provided for compatibility so that you do not need to rewrite your code.

+ **EncloseText$**(thestring$) - A simplified version of the *EncloseString$*() routine that can be found in the linuxmisclib library
    + Encloses a string in double quotes, if it isn't already.
    + Therefore *a$ = EncloseText$("This is text")* gives the same result as *a$ = "\"This is text\""*
        + Mostly for use with filenames that may include spaces.

+ **getcmd$**() - returns the command set available.
    + This is really just for me, to stop me from getting confused while I am editing four libraries simultaneously.
     + However, you could use it to test which utility (or library, in the case of clasquinator) is currently in use and if it is safe to use routines not in the common list.
    + e.g, *if getcmd$() = "clasquinator" SubmenuDlg(options ....)*
    + or  *if getcmd$() = "yad" YNotifyDlg("this is a notification")*

~~+ **InputDlg$**(text$, title$, ok$, cancel$) - Presents a one-line dialog into which the user can type a string answer.~~
 
~~+ **MenuDlg**(text$, title$, ok$, cancel$, menustring$) - Create a menu of options for the user to choose from~~

~~+ **MessageDlg**(text$, ok$) - display a simple message with an OK button.~~

~~+ **PasswordDlg$**(text$, title$, ok$, cancel$) - Same as *InputDlg$* but with asterisks replacing the input text.~~

~~+ **RadioDlg**(text$, title$, ok$, cancel$, menustring$, selected$) - Create a menu of options for the user to choose from~~

+ **TestForDialogUtility\$**\(\) - Routine to test if the called utility actually exists on the system. An empty string returned means it does, otherwise an error message is returned.

~~+ **TextFileDlg**(filename$, title$, exit$) - Displays a text file.~~

~~+ **YesNoDlg**(text$,yes$, no$) - Displays a dialog with text (normally a question) and the options to reply yes or no.~~
~~### yad-specific routines~~
 
~~**These routines will only work with yad, unless specified otherwise.**~~
 
~~+ **YCalendarDlg$**(text$, ok$, cancel$) - Display a calendar widget with today's date pre-selected.~~

~~+ **YGetDirDlg$**() - Select a directory to open.~~
~~+ **YNotifyDlg**(text$) - pop up a GTK notification.~~
~~+ **YOpenFileDlg$**() - Select a file to open.~~
~~+ **YSaveFileDlg$**() - Select or create a file to save.~~