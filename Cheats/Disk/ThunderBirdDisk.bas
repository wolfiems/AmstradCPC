10 ' Thunder Birds Cheat Mode
11 ' (C) 1989 1st Choice Software
12 MEMORY &9FFF:CALL &BC02:CALL &BBFF:BORDER 0:INK 0,0:INK 1,25:PAPER 0:PEN 1:MODE 1
13 PAPER 3:PEN 1
14 RESTORE 40:GOSUB 19:PAPER 0:PEN 2:PRINT:PRINT:GOSUB 19
15 RESTORE 49:FOR i=&A000 TO &A0DB:READ a$:POKE i,VAL("&"+a$):NEXT:RESTORE 47:PEN 3:WINDOW 1,40,3,25:CLS:PRINT:GOSUB 19
16 a$=INKEY$:IF a$<>" " THEN 16
17 PEN 1:MODE 1:a$="O.k. Here We Go...":GOSUB 22:CALL &A000
18 END
19 ' Messages
20 READ a$:IF a$="XX" THEN RETURN
21 GOSUB 22:GOTO 20
22 ' Print Routine For Mode 1 - Rather Long Winded N'est Pas ?
23 t=1:b$="":ma=40
24 IF LEN(a$)<ma+1 THEN c$=a$:GOTO 39
25 c$=""
26 mat=1
27 b$=""
28 WHILE MID$(a$,t,1)<>" " AND t<>LEN(a$)+1
29 b$=b$+MID$(a$,t,1)
30 t=t+1:WEND
31 IF MID$(a$,t,1)=" " THEN b$=b$+" ":t=t+1
32 mat=mat+LEN(b$)
33 IF mat>ma THEN 36
34 IF mat<ma+1 THEN c$=c$+b$:IF t<LEN(a$)+1 THEN 27
35 IF t=LEN(a$) OR t>LEN(a$) THEN GOSUB 39:PRINT:RETURN
36 t=t-LEN(b$)
37 GOSUB 39:PRINT
38 c$="":GOTO 26
39 FOR x=1 TO LEN(c$):PRINT MID$(c$,x,1);CHR$(24);" ";CHR$(24);CHR$(8);:SOUND 1,ASC(MID$(c$,x,1))+100,1:SOUND 2,ASC(MID$(c$,x,1))+200,1:NEXT:PAPER 0:PRINT" ":RETURN
40 ' Place Instruction Data
41 DATA "THUNDERBIRDS - Cheat Mode"
42 DATA "(C) 1989 1st Choice Software."
43 DATA XX
44 DATA "This Cheat For Grandslam's Thunderbirds Will Give You."
45 DATA "Infinite Time And","Infinite Health","Also Will Allow You To Type In Anything For A Password !!","This Cheat Is Intelligent Since It Will Detect Which Of The Four Plots You Have Loaded.","Please Wait Whilst I Set Up The Cheat"
46 DATA XX
47 DATA "Hello Again, Sorry For The Delay. Please Insert Your THUNDERBIRDS Disquette Side 1 Or 2 In Drive A:","When You Are Ready Press Space."
48 DATA XX
49 DATA F3,31,00,C0,01,C0,7F,ED,49,21,52,A0,11,40,00,01,00,01,ED,B0,21,FF
50 DATA AB,11,40,00,0E,07,CD,CE,BC,21,4E,A0,CD,D4,BC,79,22,4F,A0,32,51,A0
51 DATA 21,00,01,11,00,00,0E,41,DF,4F,A0,21,45,A0,22,86,01,21,00,01,0E,FF
52 DATA CD,16,BD,21,40,00,22,05,01,C3,00,01,84,00,00,00,21,84,03,E5,21,30
53 DATA 9E,CD,B1,00,28,26,21,96,9A,CD,B1,00,28,31,21,9D,91,CD,B1,00,28,3F
54 DATA 21,00,00,22,6A,04,22,BD,95,21,A7,C9,22,C0,95,21,00,C3,22,32,57,C9
55 DATA 21,00,00,22,38,9E,21,A7,C9,22,3B,9E,21,00,C3,22,34,6E,C9,21,00,00
56 DATA 22,6A,04,22,9E,9A,21,A7,C9,22,A1,9A,21,00,C3,22,E8,5F,C9,21,00,00
57 DATA 22,6A,04,22,A5,91,21,A7,C9,22,A8,91,21,00,C3,22,B2,57,C9,11,BE,00
58 DATA 06,07,1A,BE,23,13,C0,10,F9,C9,DD,6E,19,DD,66,1A,78,00,00,00,00,00
