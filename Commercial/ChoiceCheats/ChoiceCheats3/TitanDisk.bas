10 ' Titan Cheat Mode (V1.1)
11 '(C) 1989 1st Choice Software
12 MEMORY &8FFF:CALL &BC02:CALL &BBFF:BORDER 0:INK 0,0:INK 1,25:PAPER 0:PEN 1:MODE 1
13 PAPER 3:PEN 1
14 RESTORE 40:GOSUB 19:PAPER 0:PEN 2:PRINT:PRINT:GOSUB 19
15 RESTORE 49:FOR i=&A000 TO &A146:READ a$:POKE i,VAL("&"+a$):NEXT:RESTORE 47:PEN 3:PRINT:GOSUB 19
16 a$=INKEY$:IF a$<>" " THEN 16
17 PEN 1:MODE 0:a$="O.k. Here We Go...":GOSUB 22:CALL &A000
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
41 DATA "TITAN - Cheat Mode"
42 DATA "(C) 1989 1st Choice Software."
43 DATA XX
44 DATA "This Cheat For Titus' Titan Gives You Infinite Lives."
45 DATA "Please Wait Whilst I Set Up The Cheat"
46 DATA XX
47 DATA "Hello Again, Sorry For The Delay. Please Insert Your TITAN Disquette In Drive A:","When You Are Ready Press Space."
48 DATA XX
49 DATA F3,31,00,C0,21,11,A0,11,00,03,D5,01,00,02,ED,B0,C9,F3,01,C0,7F,ED
50 DATA 49,31,00,C0,21,FF,AB,11,40,00,0E,07,CD,CE,BC,AF,CD,0E,BC,21,32,04
51 DATA CD,D4,BC,79,22,33,04,32,35,04,21,00,01,11,00,00,0E,41,DF,33,04,F3
52 DATA 21,00,10,16,01,CD,05,01,06,19,C5,CD,C4,03,E5,2A,02,10,22,C6,03,2A
53 DATA 06,10,22,CA,03,2A,16,10,22,D4,03,2A,1B,10,22,D9,03,2A,1E,10,22,DC
54 DATA 03,2A,6B,10,22,29,04,E1,C1,10,D3,F3,31,00,06,3E,C9,32,86,02,CD,47
55 DATA 02,3E,C3,21,82,03,32,CA,9C,22,CB,9C,C3,00,10,21,00,10,16,06,CD,00
56 DATA 00,E5,F5,3E,C3,21,9C,03,32,05,01,22,06,01,F1,E1,C3,00,10,F3,CD,B5
57 DATA 01,1E,4C,CD,8C,01,01,7E,FB,CD,1D,01,F5,E5,3A,B3,19,FE,35,20,0D,3A
58 DATA B4,19,FE,C2,20,06,21,00,C3,22,B3,19,E1,F1,C9,FD,21,2D,C0,DD,21,C3
59 DATA 1F,DD,E5,E1,23,11,00,C0,01,2F,00,ED,B0,21,FE,1F,01,2E,00,FD,5E,00
60 DATA FD,2B,CB,7B,28,0E,CB,BB,DD,7E,00,77,2B,1D,20,F8,DD,2B,18,0C,DD,7E
61 DATA 00,07,3D,77,DD,2B,2B,1D,20,F4,0B,78,B1,20,D8,21,ED,B0,ED,5F,FD,6F
62 DATA E6,3F,C6,B0,DD,67,FD,75,00,FD,74,01,21,DD,E9,FD,75,02,FD,74,03,11
63 DATA 00,10,21,96,10,01,69,0F,DD,21,00,10,ED,B0,C9,84,00,00,00
