10 ' The Newzealand Story Cheat Mode
11 '(C) 1989 1st Choice Software
12 CALL &BC02:CALL &BBFF:BORDER 0:INK 0,0:INK 1,25:PAPER 0:PEN 1:MODE 1
13 PAPER 3:PEN 1
14 RESTORE 40:GOSUB 19:PAPER 0:PEN 2:PRINT:PRINT:GOSUB 19
15 RESTORE 49:FOR i=&A900 TO &AB83:READ a$:POKE i,VAL("&"+a$):NEXT:RESTORE 47:PEN 3:PRINT:GOSUB 19
16 a$=INKEY$:IF a$<>" " THEN 16
17 PEN 1:MODE 1:a$="O.k. Here We Go...":GOSUB 22:POKE &BB18,&C9:CALL &A900
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
41 DATA "THE NEWZEALAND STORY - Cheat Mode"
42 DATA "(C) 1989 1st Choice Software."
43 DATA XX
44 DATA "This Cheat For Ocean's Newzealand Story Gives You :-"
45 DATA "Infinite Lives","Please Wait Whilst I Set Up The Cheat"
46 DATA XX
47 DATA "Hello Again, Sorry For The Delay. Please Insert Your NEWZEALAND STORY Disquette In Drive A:","When You Are Ready Press Space."
48 DATA XX
49 DATA F3,31,00,C0,01,C0,7F,ED,49,AF,CD,0E,BC,01,00,00,CD,38,BC,DD,21,C8,A9
50 DATA AF,F5,DD,46,00,48,CD,32,BC,F1,3C,DD,23,FE,10,20,F0,21,FF,B0,11,40,00
51 DATA 0E,07,CD,CE,BC,CD,73,AA,F3,11,00,00,CD,AB,AA,CD,18,BB,F3,11,00,00,CD
52 DATA AB,AA,16,01,CD,8E,AA,11,00,00,CD,5D,AA,16,02,CD,8E,AA,11,00,00,CD,5D
53 DATA AA,16,03,CD,8E,AA,2A,D8,A9,11,00,F0,01,00,10,ED,B0,21,40,00,22,6A,AA
54 DATA 16,03,CD,8E,AA,11,00,10,CD,5D,AA,06,05,16,04,C5,D5,CD,8E,AA,11,00,00
55 DATA CD,5D,AA,D1,14,C1,10,F0,21,00,C0,22,D8,A9,CD,8E,AA,D5,11,00,00,CD,5D
56 DATA AA,D1,14,CD,8E,AA,21,00,C0,ED,5B,6A,AA,01,00,0E,ED,B0,11,00,00,CD,AB
57 DATA AA,CD,87,AA,21,00,00,22,0C,7E,22,0D,7E,C3,00,9C,00,0C,0A,0F,04,03,01
58 DATA 00,0D,18,14,12,08,06,02,04,00,82,46,6C,6F,70,70,79,20,44,69,73,6B,20
59 DATA 43,6F,6E,74,72,6F,6C,6C,65,72,20,52,6F,75,74,69,6E,65,73,20,57,72,69
60 DATA 74,74,65,6E,20,42,79,20,4A,61,73,6F,6E,20,42,72,6F,6F,6B,73,20,31,39
61 DATA 38,38,20,2D,20,48,69,20,48,41,43,4B,45,52,20,49,27,64,20,42,65,20,49
62 DATA 6E,74,65,72,65,73,74,65,64,20,54,6F,20,48,65,72,65,20,46,72,6F,6D,20
63 DATA 59,6F,75,20,21,20,54,65,6C,65,70,68,6F,6E,65,20,30,36,30,32,20,33,39
64 DATA 37,33,35,31,21,00,18,A7,ED,52,E5,C1,2A,D8,A9,19,11,00,C0,ED,B0,ED,53
65 DATA 6A,AA,C9,01,7E,FA,3E,01,ED,79,21,00,00,06,02,2B,7C,B5,20,FB,10,F9,C9
66 DATA 01,7E,FA,AF,ED,79,C9,F5,C5,D5,7A,32,6F,AB,CD,AB,AA,11,6C,AB,CD,0A,AB
67 DATA CD,29,AB,21,76,AB,CD,45,AB,D1,C1,F1,C9,F5,C5,D5,E5,CD,EF,AA,3A,5E,AB
68 DATA 92,28,11,7A,B7,28,12,CD,FE,AA,CD,EF,AA,3A,5D,AB,CB,6F,28,F6,E1,D1,C1
69 DATA F1,C9,CD,E9,AA,CD,DB,AA,7E,E6,10,28,F8,18,EE,11,60,AB,CD,0A,AB,21,5F
70 DATA AB,CD,45,AB,2B,C9,11,69,AB,C3,0A,AB,D5,11,67,AB,CD,0A,AB,21,5D,AB,CD
71 DATA 45,AB,D1,C9,D5,32,66,AB,11,63,AB,CD,0A,AB,D1,C9,01,7E,FB,C5,1A,F5,13
72 DATA ED,78,87,30,FB,FA,11,AB,1A,0C,ED,79,0D,3E,05,3D,20,FD,F1,3D,20,E8,C1
73 DATA C9,2A,D8,A9,01,7E,FB,ED,78,FE,C0,38,06,0C,ED,78,77,0D,23,ED,78,F2,3B
74 DATA AB,E6,20,20,F1,C9,ED,78,FE,C0,38,FA,0C,ED,78,77,0D,23,3E,05,3D,20,FD
75 DATA ED,78,E6,10,20,E9,C9,00,00,00,02,04,00,03,0F,00,00,01,08,02,07,00,09
76 DATA 4C,00,00,00,C1,06,C1,2A,FF,00,00,00,00,00,00,00,00,00,00,00,00,00,00
