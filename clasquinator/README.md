# clasquinator

This folder contains a library for yabasic that allows yabasic to display a variety of dialogs in text mode without making use of external commands.

*Some* routines will also be made available in graphics mode, but keep in mind that you only have one graphics window to play with. if you use these, you will not have the graphics window for your own use.

The library is written as a textmode application and must be run in a terminal. It will not be useful in a headless script.

The entire set of libraries focuses on sane defaults and getting basic functionality into yabasic.

The images below are for illustration only. The exact appearance of the dialogs will depend on your system settings.

Developed on elementary OS 0.4 "Loki" (i.e. Linux), but it should work on any \*NIX system that will run yabasic. I don't have a Windows machine to test this on, so please let me know if anything works/doesn't work on that side.

The library should exist either in the same folder as your program (symlinks work) or in the standard yabasic library location on your system.

To use the library, use the command 

    import clasquinatorlib

You should **not** use this library and one of the others in this set that provides dialogs concurrently, because they replicate subroutine names. Pick the right one for your program and stick with it!

Currently still in planning stages and not really usable. But watch this space!

## Routines available:

This library poaches as many ideas as possible from the other four dialog-providing libraries, but there is not 100% compatibility here, so we will not divide things into Common and Clasquinator-specific sections.

+ **ClearDlg**() - on dialog and whiptail, this clears the dialog from your terminal. Same as the yabasic command CLEAR SCREEN, but may work better if you are expecting to issue another Linux command immediately. On zenity, clasquinator and kdialog, dummy routines are provided for compatibility so that you do not need to rewrite your code.

+ **InputDlg$**(text$, title$, ok$, cancel$) - Presents a one-line dialog into which the user can type a string answer.
    + **To Be Done**
    
[](    + The value *title$* is the title on top of the widget
    + The value *ok$* is the text of the accept button, normally OK.
    + The value *cancel$* is the text of the reject button, normally Cancel.
    + The result is returned as a string value.)

![InputDlg](./imgs/InputDlg.png)

+ **MenuDlg**(text$, title$, ok$, cancel$, menustring$) - Create a menu of options for the user to choose from.
    + **To Be Done**
    
[](    + The value *title$* has no effect in whiptail, but is kept here for compatibility and must be supplied.
    + The value *ok$* is the text of the accept button, normally OK.
    + The value *cancel$* is the text of the reject button, normally Cancel.
    + The value menustring$ is the list of menu options as a single string, separated by hash signs (#). Spaces are allowed.
    + If the number of options exceed the available space in the widget, the list will be scrollable.
    + The result is returned as a numeric value, starting from 1.
   + If you prefer to get the same number in string format, you can use **MenuDlg$**(text$, title$, ok$, cancel$, menustring$))

![MenuDlg](./imgs/MenuDlg.png)

+ **MessageDlg**(text$, ok$) - Display a simple message with an OK button.
    + **To Be Done**
    
[](    + The value *ok$* is the text of the accept button, normally OK
    + Returns nothing.)

![MessageDlg](./imgs/MessageDlg.png)

+ **PasswordDlg$**(text$, title$, ok$, cancel$) - Same as *InputDlg$* but with asterisks replacing the input text.
    + **To Be Done**
    
[](    + The value *text$* has no effect in whiptail, but is kept here for compatibility and must be supplied. This seems to be a bug in the current version of whiptail.
    + The value *ok$* is the text of the accept button, normally OK
    + The value *cancel$* is the text of the reject button, normally Cancel
    + The result is returned as a string value.)

![PasswordDlg](./imgs/PasswordDlg.png)

+ **RadioDlg**(text$, title$, ok$, cancel$, menustring$, selected$) - Create a menu of options for the user to choose from.
    + **To Be Done**
    
[](    + Same as *MenuDlg*(), except that you can indicate which item in *menustring$* is currently selected or active.
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
    + *EXAMPLE: a = RadioDlg("This is a menu", "A Menu!","Accept", "Deny", "Science#Religion#Magic#All of the above", "Magic"): print a*)

![RadioDlg](./imgs/RadioDlg.png)

+ **TestForDialogUtility$**\(\) - Routine to test if the called utility actually exists on the system. An empty string returned means it does, otherwise an error message is returned.
    + in *clasquinator*, this is a dummy routine provided for compatibility. It will always return an empty string.

+ **TextFileDlg**(filename$, title$, exit$) - Displays a text file.
    + **To Be Done**
    
[](    + 	The value *title$* is the title on top of the widget
    + The value *exit$* is the title of the button. Normally OK.
    + Text wrapping varies from one dialog-provider to the next. It is better if you preformat your text file.
    + Returns nothing.)

![TextFileDlg](./imgs/TextFileDlg.png)

+ **SubmenuDlg**(text$, title$, ok$, cancel$, menustring$) - Create a seconday menu of options for the user to choose from.
    + **To Be Done**
    
[](    + The value *title$* has no effect in whiptail, but is kept here for compatibility and must be supplied.
    + The value *ok$* is the text of the accept button, normally OK.
    + The value *cancel$* is the text of the reject button, normally Cancel.
    + The value menustring$ is the list of menu options as a single string, separated by hash signs (#). Spaces are allowed.
    + If the number of options exceed the available space in the widget, the list will be scrollable.
    + The result is returned as a numeric value, starting from 1.
   + If you prefer to get the same number in string format, you can use **SubmenuDlg$**(text$, title$, ok$, cancel$, menustring$))

![SubmenuDlg](./imgs/SubmenuDlg.png)

+ **YesNoDlg**(text$,yes$, no$) - Displays a dialog with text (normally a question) and the options to reply yes or no.
    + **To Be Done**
    
[](    + in *dialog*, the first CAPITAL letter of the yes$ and no$ variables will become the hotkeys for those buttons, so make sure they are different. This does not matter for the other dialog-providing utilities.
    + Returns 1 for yes and 0 for no.)

![YesNoDlg](./imgs/YesNoDlg.png)


