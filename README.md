# yabasiclibs

Extension libraries for yabasic.

A series of libraries for [yabasic](http://www.yabasic.de/) , the BASIC dialect by [Marc Ihm](https://github.com/marcIhm), that give access to a number of common utilities on Linux. Not tested on other UNIX platforms, but it should be possible to adjust them accordingly.

This software is still very much in the pre-alpha stage. The routines in the libraries work, but need a lot of optimization and error-trapping.

## The libraries

+ [dialoglib.yab](https://clasqm.github.io/yabasiclibs/dialog/) - allows the use of the Linux command *dialog* to display a variety of dialogs in text mode.
+ [kdialoglib.yab](https://clasqm.github.io/yabasiclibs/kdialog/) - allows the use of the Linux command *kdialog* to display a variety of dialogs in text mode.
+ [linuxmisclib.yab](https://clasqm.github.io/yabasiclibs/linuxmisc/) - allows the use of a variety of common Linux text-mode commands and applications. Also contains a few routines that I just found myself doing over and over.
+ [whiptaillib.yab](https://clasqm.github.io/yabasiclibs/whiptail/) - allows the use of the Linux command *whiptail* to display a variety of dialogs in text mode.
+ [zenitylib.yab](https://clasqm.github.io/yabasiclibs/zenity/) - allows the use of the Linux command *zenity* to display a variety of dialogs in graphical mode.

For instructions, see the separate README file for each of these libraries. Each library also comes with a *test.bas* file in which each new function is supplied with an example. Just remove the comments from the example you want to test, save the changes  and run the command

    yabasic test.bas
    
within the same folder where the library resides.

There is also a *demo* folder where some of the capabilities of the system are demonstrated in short programs. See [here](https://clasqm.github.io/yabasiclibs/demo/) for instructions.

Please note that the libraries that give access to dialog boxes cannot be mixed in the same program, as they will create an unholy mess of namespace confusion. Pick one and stick with it! However, the *linuxmisclib* library can be safely combined with any one of the others.

The dialog-providing routines have common commands as well as dialog-specific ones. If your program sticks religiously to the common routines, you will be able to change it from, say, zenity to kdialog by changing a single *import* statement.

Get it here: https://github.com/clasqm/yabasiclibs 

## What will *not* be included

+ Routines to use GUI apps. There is no possible way to wite a routine for every graphical text editor in Linux. And that is just the text editors. My routines are very straightforward and you should be able to adapt them to your own needs.
+ Anything to do with emacs. Friends don't let friends use emacs.
+ In *linuxmisclib*, routines that start up in a new xterm. Well, maybe much later.
+ The entire set of libraries focuses on sane defaults and getting basic functionality into yabasic. There are a lot of obscure switches (esp. in kdialog) that will not be implemented!

## Longer-term plans

At some stage, I will start writing my own library, purely in yabasic, that will replicate as many of these routines as possible. It will look completely different, but will use the same routine names, so you will still be able to switch between libraries with a single *import* statement. And *that* library should work in Windows too!

![Thanks](./imgs/thanks.png)

