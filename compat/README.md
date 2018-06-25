# Compat.yab

Yabasic libraries (c) Michel Clasquin-Johnson 2018.
Licensed accordingto the MIT license

If you are reading this as a man page, be advised that you can see it in glorious HTML, with pictures even, at https://clasqm.github.io/

## Compatibility Library for yab
by Michel Clasquin-Johnson
clasqm@gmail.com

Created to make the importing of BASIC programs from other dialects a little easier by creating aliases for existing yabasic commands. But keep in mind that these routines are case-sensitive, so your ported applications must be in lowercase.

This is just a beginning. Please help make this a community project by sending me ideas for other commands that can be included. If possible, include what the command does, how many parameters it requires, and from which version of BASIC it comes. If you can write the routine yourself, even better! Send it, and I'll include it in the next version.

**Usage**: from within yabasic, use 

    IMPORT compatlib

Now you can use the routines below like yabasic had always known about them.

## Routines available

* ucase$(z$)
    * upper$ in yabasic
* lcase$(z$)
    * lower$ in yabasic
 * cls()
    * clear screen in yabasic
    * About as close as we can get - sorry but you'll have to use the brackets
* sys(z$)
    * system() in yabasic
* sys$(z$)
    * system$() in yabasic

