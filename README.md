# yabasiclib

Yabasic libraries (c) Michel Clasquin-Johnson 2018.
Licensed accordingto the MIT license

If you are reading this as a man page, be advised that you can see it in glorious HTML, with pictures even, at https://clasqm.github.io/

Extension libraries for yabasic.

A series of libraries for [yabasic](http://www.yabasic.de/) , the BASIC dialect by [Marc Ihm](https://github.com/marcIhm), that give access to a number of common utilities on Linux, mostly intended to provide standard dialogs. Not tested on other UNIX platforms, but it should be possible to adjust them accordingly.

This does not make yabasic able to write full-on graphical programs, like its own derivative [yab](http://yab.orgfree.com/) on the Haiku platform, but it does allow you to use yabasic as the backend for "wizard"-style applications.

This software is still very much in the alpha stage. The routines in the libraries work, but need a lot of optimization and error-trapping.

The library should exist either in the same folder as your program (symlinks work) or in the standard yabasic library location on your system. There is a .deb file [available](https://github.com/clasqm/yabasiclibs/tree/master/build) for those of you who are on Debian-derived systems, but I am pretty new at building .deb files, so I would appreciate feedback!

Developed on elementary OS 0.4 "Loki" and Lubuntu 18.04 (i.e. Linux), but it should work on any *NIX system that will run yabasic. Testing on Windows has been far more sketchy, since I don't have a windows box here, but I did what I could in my lunch break at work ;-). Don't tell my boss.

## The libraries
+ [compat.yab](https://clasqm.github.io/yabasiclibs/compat/) - a yabasic library that makes the importing of BASIC programs from other dialects a little easier by creating aliases for existing yabasic commands.
+ [clasquinator.yab](https://clasqm.github.io/yabasiclibs/clasquinator/) - a yabasic library that attempts to reproduce the functionality of the other four dialog-providing libraries purely from within yabasic.
    + *This library is not 100% compatible with the other four and likely never will be!*
    + This library should work in yabasic for Windows too, but testing has been not been very extensive on that platform.
    + Most routines offer more than one style variation to the dialogs. Below we will demonstrate two of these. 
    + Currently in alpha stage.
    
![clasquinator](./clasquinator/imgs/InputDlg.png)

![clasquinator2](./clasquinator/imgs/InputDlg2.png)

+ [dialoglib.yab](https://clasqm.github.io/yabasiclibs/dialog/) - allows the use of the Linux command *dialog* to display a variety of graphical dialogs in text mode.
    + Currently in alpha stage.
    
![dialog](./dialog/imgs/InputDlg.png)

+ [kdialoglib.yab](https://clasqm.github.io/yabasiclibs/kdialog/) - allows the use of the Linux command *kdialog* to display a variety of graphical dialogs.
    + Currently in alpha stage.

![kdialog](./kdialog/imgs/InputDlg.png)

+ [linuxmisclib.yab](https://clasqm.github.io/yabasiclibs/linuxmisc/) - allows the use of a variety of common Linux text-mode commands and applications. Also contains a few routines that I just found myself doing over and over.
    + Currently in alpha stage.
    + The way this thing keeps growing, it may never get out of alpha ...
+ [whiptaillib.yab](https://clasqm.github.io/yabasiclibs/whiptail/) - allows the use of the Linux command *whiptail* to display a variety of dialogs in text mode.
    + Currently in alpha stage.

![whiptail](./whiptail/imgs/InputDlg.png)

+ <u>yadlib.yab</u> - Discontinued. We'll take another look when the *yad* utility is a bit more mature.

+ [zenitylib.yab](https://clasqm.github.io/yabasiclibs/zenity/) - allows the use of the Linux command *zenity* to display a variety of graphical dialogs.
    + Currently in alpha stage.

![zenity](./zenity/imgs/InputDlg.png)

For instructions, see the separate README file for each of these libraries. Each library also comes with a *test.bas* file in which each new function is supplied with an example. Just remove the comments from the example you want to test, save the changes  and run the command

    yabasic test.bas
    
within the same folder where the library resides.

There is also a *demo* folder where some of the capabilities of the system are demonstrated in short programs. See [here](https://clasqm.github.io/yabasiclibs/demo/) for instructions.

Please note that the libraries that give access to dialog boxes cannot be mixed in the same program, as they will create an unholy mess of namespace confusion. Pick one and stick with it! However, the *linuxmisclib* library can be safely combined with any one of the others.

The four external dialog-providing routines have common commands as well as dialog-specific ones. If your program sticks religiously to the common routines, you will be able to change it from, say, zenity to kdialog by changing a single *import* statement.

Get it here: https://github.com/clasqm/yabasiclibs 

## What will *not* be included

+ Routines to use other GUI apps. There is no possible way to write a routine for every graphical text editor in Linux. And that is just the text editors. My routines are very straightforward and you should be able to adapt them to your own needs.
+ Anything to do with emacs. Friends don't let friends use emacs.
+ In *linuxmisclib*, routines that start up in a new xterm. Well, maybe much later.
+ In *dialog*, the directory- and file-selectors. Too clunky to be allowed to live, and there is nothing compatible in *whiptail* anyway.
+ The entire set of libraries focuses on sane defaults and getting basic functionality into yabasic. There are a lot of obscure switches (esp. in *kdialog* and *zenity*) that will not be implemented!

![Thanks](./imgs/thanks.png)

