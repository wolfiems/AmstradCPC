10 ' Cybernoid Cheat Mode
20 '(C) 1989 1st Choice Software
30 MEMORY &3FFF:CALL &BC02:CALL &BBFF:BORDER 0:INK 0,0:INK 1,25:PAPER 0:PEN 1:MODE 1
40 PAPER 3:PEN 1
50 RESTORE 310:GOSUB 100:PAPER 0:PEN 2:PRINT:PRINT:GOSUB 100
60 GOSUB 390:MODE 1:RESTORE 370:PEN 3:GOSUB 100
70 a$=INKEY$:IF a$<>" " THEN 70
80 PEN 1:MODE 1:a$="O.k. Here We Go...":GOSUB 130:CALL &9000
90 END
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
320 DATA "CYBERNOID - Cheat Mode"
330 DATA "(C) 1989 1st Choice Software."
340 DATA XX
350 DATA "This Cheat For Hewson's Cybernoid. Will Give You The Choice Of","Infinite Lives,","Infinite Weapons,","Removing Collision Detection,","Removing The Aliens,","Stopping Rockets Shooting At You,","Removing Aliens In The Shafts And "
360 DATA "Stopping Hornets Nests Shooting At You.",XX
370 DATA "Thank You. Please Insert Your","CYBERNOID Disk In Drive A:","Hit Space When You Are Ready."
380 DATA XX
390 GOSUB 700:RESTORE 550
400 FOR i=&9000 TO &9096:READ a$:a=VAL("&"+a$):POKE i,a:CALL &BD19:NEXT
410 RESTORE 620:i=&A000:cheat$="21A0031100020100C8EDB0":GOSUB 490
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
540 MODE 2:PRINT "Sorry you have typed a mistake in the data lines":END
550 DATA F3,31,00,C0,01,C0,7F,ED,49,21,FF,AB,11,40,00,0E,07,CD,CE,BC,AF,3D
560 DATA 32,78,BE,21,93,90,CD,D4,BC,79,22,94,90,32,96,90,21,00,01,11,00,00
570 DATA 0E,41,DF,94,90,30,12,21,00,A0,11,40,00,01,80,00,ED,53,84,02,ED,B0
580 DATA C3,00,01,21,5C,90,7E,B7,28,06,23,CD,5A,BB,18,F6,CD,09,BB,38,FB,CD
590 DATA 06,BB,18,A4,41,20,44,69,73,6B,20,45,72,72,6F,72,20,48,61,73,20,4F
600 DATA 63,63,75,72,65,64,2E,0D,0A,07,0A,50,72,65,73,73,20,41,20,4B,65,79
610 DATA 20,54,6F,20,54,72,79,20,41,67,61,69,6E,2E,00,84,00,00,00
620 DATA Infinite Lives,AF32AE2B
630 DATA Infinite Weapons,AF320D1A
640 DATA Remove Collision Detection,3EC9323A2B
650 DATA Remove Aliens,3EC9321135
660 DATA Stop Rockets Shooting At You,3EC9324D34
670 DATA Stop Aliens In The Shaft,3EC9329F2C
680 DATA Stop Hornets Nests Shooting At You,3EC9329B29
690 DATA 54321,C30002
700 i=TIME+450:WHILE i>TIME:WEND
710 PAPER 1:PEN 3:LOCATE 10,24:PRINT "HIT SPACE TO PROCEED"
720 WHILE INKEY$<>" ":WEND
730 RETURN
