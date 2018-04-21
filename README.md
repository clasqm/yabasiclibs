# yabasiclibs
extension libraries for yabasic

A series of libraries for [yabasic](http://www.yabasic.de/) that gives access to a number of common utilities on Linux. Not tested on other platforms, but it should be possible to adjust them accordingly.

+ dialoglib.yab - allows the use of the Linux command *dialog* to display a variety of dialogs in text mode.
+ linuxmisclib.yab - allows the use of a variety of common Linux commands in text mode.
+ whiptaillib.yab - allows the use of the Linux command *whiptail* to display a variety of dialogs in text mode.
+ zenitylib.yab - allows the use of the Linux command *zenity* to display a variety of dialogs in graphical mode.

For instructions, see the separate README file for each of these libraries. Please note that the libraries that give access to dialog boxes cannot be mixed in the same program, as they will create an unholy mess of namespace confusion. Pick one and stick with it!





