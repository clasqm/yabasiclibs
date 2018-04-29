#!/usr/bin/env yabasic
//Print out samples of both figlet and toilet fonts installed on your system.
//figlet should be able to use toilet fonts too, but I see
//best results if you use them separately.

a$ = system$("locate *.flf")
b$ = system$("locate *.tlf")
dim a$(1): dim b$(1)

numa = token(a$, a$(), "\n")
numb = token(b$, b$(), "\n")

for f = 1 to numa
	dim c$(1)
		numc = token(a$(f), c$(), "/")
		c$ = c$(numc)
	print "FIGLET:", a$(f)
	system("figlet -f " + c$ + " " + c$)
next f

for f = 1 to numb
	dim d$(1)
		numd = token(b$(f), d$(), "/")
		d$ = d$(numd)
	print "TOILET: ",b$(f)
	system("toilet -f " + d$ + " " + d$)
next f
