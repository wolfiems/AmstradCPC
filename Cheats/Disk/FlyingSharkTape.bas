10 ' Flying Shark Cheat Mode
20 '(C) 1989 1st Choice Software
30 SYMBOL AFTER 230:MEMORY &3FFF:CALL &BC02:CALL &BBFF:BORDER 0:INK 0,0:INK 1,25:PAPER 0:PEN 1:MODE 1
40 PAPER 3:PEN 1
50 RESTORE 310:GOSUB 100:PAPER 0:PEN 2:PRINT:PRINT:GOSUB 100
60 GOSUB 390:MODE 1:RESTORE 370:PEN 3:GOSUB 100
70 a$=INKEY$:IF a$<>" " THEN 70
80 PEN 1:MODE 1:a$="O.k. Here We Go...":GOSUB 130:CALL &BD37:WINDOW #1,12,33,10,10:WINDOW #2,12,33,10,10:WINDOW 12,33,10,10:CALL &A5
00
90 END
91 i=TIME+450:WHILE i>TIME:WEND
92 PAPER 1:PEN 3:LOCATE 10,24:PRINT "HIT SPACE TO PROCEED"
93 WHILE INKEY$<>" ":WEND
94 RETURN
100 ' Messages
110 READ a$:IF a$="XX" THEN RETURN
120 GOSUB 130:GOTO 110
130 ' Print Routine For Mode 1 - Rather Long Winded N'est Pas ?
140 t=1:b$="":ma=40
150 IF LEN(a$)<ma+1 THEN c$=a$:GOTO 300
160 c$=""
170 mat=1
180 b$=""
190 WHILE MID$(a$,t,1)<>" " AND t<>LEN(a$)+1
200 b$=b$+MID$(a$,t,1)
210 t=t+1:WEND
220 IF MID$(a$,t,1)=" " THEN b$=b$+" ":t=t+1
230 mat=mat+LEN(b$)
240 IF mat>ma THEN 270
250 IF mat<ma+1 THEN c$=c$+b$:IF t<LEN(a$)+1 THEN 180
260 IF t=LEN(a$) OR t>LEN(a$) THEN GOSUB 300:PRINT:RETURN
270 t=t-LEN(b$)
280 GOSUB 300:PRINT
290 c$="":GOTO 170
300 FOR x=1 TO LEN(c$):PRINT MID$(c$,x,1);CHR$(24);" ";CHR$(24);CHR$(8);:SOUND 1,ASC(MID$(c$,x,1))+100,1:SOUND 2,ASC(MID$(c$,x,1))+200,1:NEXT:PAPER 0:PRINT" ":RETURN
310 ' Place Instruction Data
320 DATA "FLYING SHARK - Cheat Mode"
330 DATA "(C) 1989 1st Choice Software."
340 DATA XX
350 DATA "This Cheat For Firebird's Flying Shark Will Give You The Choice Of","Infinite Lives,","Infinite Smart Bombs,","Removing Collision Detection,","Stopping Small Aircraft Shooting You,","Removing Small Aircraft"
360 DATA "And Killing The Enemy With One Shot.",XX
370 DATA "Thank You. Please Insert Your","FLYING SHARK Cassette And Press Play","Hit Space When You Are Ready."
380 DATA XX
390 GOSUB 91:RESTORE 540
400 FOR i=&A500 TO &A589:READ a$:a=VAL("&"+a$):POKE i,a:NEXT:GOSUB 690
410 RESTORE 610
420 PAPER 0:PEN 1:MODE 2:BORDER 0:INK 0,0:INK 1,26
430 READ ask$,cheat$:IF ask$="54321" THEN 470
440 GOSUB 510:INPUT y$:y$=UPPER$(y$):y$=LEFT$(y$,1):IF y$="Y" OR y$="O" THEN GOSUB 490
450 IF y$="N" OR y$="Y" OR y$="O"  THEN PRINT:GOTO 430
460 PRINT:p$=ask$:ask$="Pardon ?":GOSUB 510:ask$=p$:PRINT:PRINT:GOTO 440
470 GOSUB 490
480 RETURN
490 L=LEN(cheat$):FOR t=1 TO L STEP 2:t$=MID$(cheat$,t,2):p=VAL("&"+t$)
500 POKE i,p:i=i+1:NEXT:RETURN
510 FOR x=1 TO LEN(ask$):PRINT MID$(ask$,x,1);" ";:SOUND 1,ASC(MID$(ask$,x,1))+100,1:SOUND 2,ASC(MID$(ask$,x,1))+200,1:NEXT:PRINT" ";:RETURN
520 L=LEN(cheat$):FOR t=1 TO L STEP 2:t$=MID$(cheat$,t,2):p=VAL("&"+t$)
530 POKE i,p:i=i+1:NEXT:RETURN
540 DATA CD,37,BD,3E,01,CD,6B,BC,21,5F,A5,7E,23,B7,28,05,CD,5A,BB,18,F6,CD,49
550 DATA A5,3A,5E,A5,B7,28,F7,3D,28,F4,F3,31,00,C0,21,74,A5,11,00,BE,D5,01,50
560 DATA 01,ED,B0,2A,38,BD,22,03,BE,2A,01,BB,22,38,BD,3E,C3,E1,32,0E,BC,22,0F
570 DATA BC,C3,00,00,11,40,00,06,00,CD,77,BC,EB,32,5E,A5,22,47,A5,CD,83,BC,C3
580 DATA 7A,BC,00,48,61,63,6B,69,6E,67,2E,2E,20,50,72,65,73,73,20,50,6C,61,79
590 DATA 00,F5,E5,21,00,00,22,38,BD,CD,37,BD,21,16,BE,22,B6,01,E1,F1,C3,0E,BC
610 DATA Do You Require Infinite Lives,AF21000032703B22713B
620 DATA Do You Require Infinite Smart Bombs,AF32A54F22A64F
630 DATA Remove Collision Detection,AF32E74F
640 DATA Stop Small Enemy Aircraft Shooting You,AF32E854
650 DATA Remove Small Enemy Aircraft,AF210000325A49225B49
660 DATA Do You Require All Aircraft To Die With One Shot,AF32414D
670 DATA 54321,C300C0
680 ' Set Up Characters For Loading Routine
690 SYMBOL 237,64,160,160,160,160,160,64,0
700 SYMBOL 238,14,14,4,4,4,4,4,0
710 SYMBOL 239,150,215,213,245,181,183,150,0
720 SYMBOL 240,138,138,170,170,170,250,82,0
730 SYMBOL 241,206,238,168,172,200,174,174,0
740 SYMBOL 242,74,170,170,142,170,170,74,0
750 SYMBOL 243,76,174,170,170,236,170,170,0
760 SYMBOL 244,78,174,136,76,40,174,78,0
770 SYMBOL 245,0,1,0,0,0,0,0,0
780 SYMBOL 246,228,234,74,74,78,74,74,0
790 SYMBOL 247,196,234,170,170,174,234,202,0
800 SYMBOL 248,128,64,64,128,128,0,128,0
810 SYMBOL 249,160,161,224,192,224,160,160,0
820 SYMBOL 250,68,170,170,168,170,170,68,0
830 SYMBOL 251,200,232,168,200,168,238,206,0
840 SYMBOL 252,128,64,0,192,64,64,128,0
850 SYMBOL 253,164,181,181,189,173,173,164,0
860 SYMBOL 254,76,174,170,170,234,174,172,0
870 SYMBOL 255,132,138,138,138,138,234,228,0
875 POKE &A510,0:POKE &A511,0:POKE &A512,0
880 RETURN
