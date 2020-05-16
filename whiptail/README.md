# whiptaillib.yab

A yabasic library (c) Michel Clasquin-Johnson 2018.
Licensed accordingto the MIT license

If you are reading this as a man page, be advised that you can see it in glorious HTML, with pictures even, at https://clasqm.github.io/

This library for *yabasic* allows the use of the Linux command *whiptail* to display a variety of dialogs in text mode.

The library will test for the presence of the *whiptail* command and will exit gracefully if it is not present. *Whiptail* is a textmode application and must be run in a terminal. It will not be useful in a headless script.

The entire set of libraries focuses on sane defaults and getting basic functionality into yabasic. There are a lot of options that will not be implemented!

The images below are for illustration only. The exact appearance of the dialogs will depend on your system settings.

Developed on elementary OS 0.4 "Loki" and Lubuntu 18.04 (i.e. Linux), but it should work on any system that will run both yabasic and the whiptail command.

The library should exist either in the same folder as your program or in the standard yabasic library location on your system.

To use the library, use the command 

    import whiptaillib

If you would rather cut and paste these subroutines into your own program rather than importing this rather large library, or create your own, smaller library with just the routines you need, be my guest (I *would* appreciate a note of acknowledgement in your code). But some subroutines require supporting routines that you will find at the end of this library. You will have to include those as well.

You should **not** use this library and one of the others in this set that provides dialogs concurrently, because they replicate subroutine names. Pick the right one for your program and stick with it!

*Whiptail* does not have file selection dialogs ATM. If you really need them, try the *SelectFile$()*, *SelectDir$()* and *SelectMultiFile$()* routines in the *linuxmisclib* library.

## Routines available:
+ **Common**
    + *ClearDlg*()
    + *EncloseText$*()
    + *getcmd$*()
    + *InputDlg$*()
    + *MenuDlg*()
    + *MessageDlg*()
    + *PasswordDlg$*()
    + *RadioDlg*()
    + *TestForDialogUtility$*()
    + *TextFileDlg*()
    + *YesNoDlg*()
### Common Routines

**These routines are available on any of the four dialog-providing libraries.**

+ **ClearDlg**() - on dialog and whiptail, this clears the dialog from your terminal. Same as the yabasic command CLEAR SCREEN, but may work better if you are expecting to issue another Linux command immediately. On zenity, clasquinator and kdialog, dummy routines are provided for compatibility so that you do not need to rewrite your code.

+ **EncloseText$**(thestring$) - A simplified version of the *EncloseString$*() routine that can be found in the linuxmisclib library
    + Encloses a string in double quotes, if it isn't already.
    + Therefore *a$ = EncloseText$("This is text")* gives the same result as *a$ = "\"This is text\""*
    + Mostly for use with filenames that may include spaces.

+ **getcmd$**() - returns the command set available.
    + This is really just for me, to stop me from getting confused while I am editing four libraries simultaneously. 
    + However, you could use it to test which utility (or library, in the case of clasquinator) is currently in use and if it is safe to use routines not in the common list.
    + e.g, *if getcmd$() = "clasquinator" SubmenuDlg(options ....)*
    + or  *if getcmd$() = "zenity" ZNotifyDlg("this is a notification")*
    
+ **InputDlg$**(text$, title$, ok$, cancel$) - Presents a one-line dialog into which the user can type a string answer.
    + The value *title$* is the title on top of the widget
    + The value *ok$* is the text of the accept button, normally OK.
    + The value *cancel$* is the text of the reject button, normally Cancel.
    + The result is returned as a string value.
    + *Example:*
```
a$ = InputDlg$(EncloseText$("What is your name?"), EncloseText$("Who are you?"), "Accept", "Cancel")
```
![InputDlg](./imgs/InputDlg.png)

+ **MenuDlg**(text$, title$, ok$, cancel$, menustring$) - Create a menu of options for the user to choose from
    + The value *title$* has no effect in whiptail, but is kept here for compatibility and must be supplied.
    + The value *ok$* is the text of the accept button, normally OK.
    + The value *cancel$* is the text of the reject button, normally Cancel.
    + The value menustring$ is the list of menu options as a single string, separated by hash signs (#). Spaces are allowed.
    + If the number of options exceed the available space in the widget, the list will be scrollable.
    + The result is returned as a numeric value, starting from 1.
    + The one thing you should be careful not to run from such a menu is ... another Yabasic program. As of May 2020, yabasic scripts or bound apps will crash any shell script or menuing app you try to launch them from. Don't ask me why.
   + If you prefer to get the same number in string format, you can use **MenuDlg$**(text$, title$, ok$, cancel$, menustring$) 

![MenuDlg](./imgs/MenuDlg.png)

+ **MessageDlg**(text$, ok$) - Display a simple message with an OK button.
    + The value *ok$* is the text of the accept button, normally OK
    + Returns nothing.
   + *Example:*
```
MessageDlg(EncloseText$("This is a simple message dialog. Close it with O or ENTER or try clicking on OK."),"OK")
```
![MessageDlg](./imgs/MessageDlg.png)

+ **PasswordDlg$**(text$, title$, ok$, cancel$) - Same as *InputDlg$* but with asterisks replacing the input text.
    + The value *text$* has no effect in whiptail, but is kept here for compatibility and must be supplied. This seems to be a bug in the current version of whiptail.
    + The value *ok$* is the text of the accept button, normally OK
    + The value *cancel$* is the text of the reject button, normally Cancel
    + The result is returned as a string value.

![PasswordDlg](./imgs/PasswordDlg.png)

+ **RadioDlg**(text$, title$, ok$, cancel$, menustring$, selected$) - Create a menu of options for the user to choose from.
    + Same as *MenuDlg*(), except that you can indicate which item in *menustring$* is currently selected or active.
    + The value *title$* is the title on top of the widget
    + The value *ok$* is the text of the accept button, normally OK.
    + The value *cancel$* is the text of the reject button, normally Cancel.
    + The value *menustring$* is the list of menu options as a single string, separated by hash signs (#). Spaces are allowed.
    + The value *selected$* is the currently selected item and must correspond to one of the items in *menustring$* - case sensitive!
    + Just moving the cursor is not enough here - the value in the menu must be explicitly selected with SPACE.
    + If the number of options exceed the available space in the widget, the list will be scrollable.
    + The result is returned as a numeric value, starting from 1.
    + If you prefer to get the same number in string format, you can use **RadioDlg$**(text$, title$, ok$, cancel$, menustring$, selected$)
    + This routine does work in whiptail, but the graphical feedback is poor. This may be a bug in the current version of whiptail.
    + *EXAMPLE: a = RadioDlg("This is a menu", "A Menu!","Accept", "Deny", "Science#Religion#Magic#All of the above", "Magic"): print a*

![RadioDlg](./imgs/RadioDlg.png)

+ **TestForDialogUtility$**\(\) - Routine to test if the called utility actually exists on the system. An empty string returned means it does, otherwise an error message is returned.

+ **TextFileDlg**(filename$, title$, exit$) - Displays a text file.
    + 	The value *title$* is the title on top of the widget
    + The value *exit$* is the title of the button. Normally OK.
    + Text wrapping varies from one dialog-provider to the next. It is better if you preformat your text file.
    + Returns nothing.

![TextFileDlg](./imgs/TextFileDlg.png)

+ **YesNoDlg**(text$,yes$, no$) - Displays a dialog with text (normally a question) and the options to reply yes or no.
    + in *dialog*, the first CAPITAL letter of the yes$ and no$ variables will become the hotkeys for those buttons, so make sure they are different. This does not matter for the other dialog-providing utilities.
    + Returns 1 for yes and 0 for no.
    + If you would rather get the same result in string format, use *YesNoDlg$*(text$,yes$, no$)

![YesNoDlg](./imgs/YesNoDlg.png)

### whiptail-specific routines

**These routines will only work with whiptail.**

None - whiptail is the least evolved of the four.



