10 ' Operation Wolf Cheat Mode
11 '(C) 1989 1st Choice Software
12 MEMORY &9FFF:CALL &BC02:CALL &BBFF:BORDER 0:INK 0,0:INK 1,25:PAPER 0:PEN 1:MODE 1
13 PAPER 3:PEN 1
14 RESTORE 40:GOSUB 19:PAPER 0:PEN 2:PRINT:PRINT:GOSUB 19
15 RESTORE 49:FOR i=&A000 TO &A144:READ a$:POKE i,VAL("&"+a$):NEXT:RESTORE 47:PEN 3:PRINT:GOSUB 19
16 a$=INKEY$:IF a$<>" " THEN 16
17 PEN 1:MODE 1:a$="O.k. Here We Go...":GOSUB 22:CALL &A000
18 END
19 ' Messages
20 READ a$:IF a$="XX" THEN RETURN
21 GOSUB 22:GOTO 20
22 ' Print Routine For Mode 1 - Rather Long Winded N'est Pas ?
23 t=1:b$="":ma=39
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
41 DATA "OPERATION WOLF - Cheat Mode"
42 DATA "(C) 1989 1st Choice Software."
43 DATA XX
44 DATA "This Cheat For Ocean's Operation Wolf Gives You Infinite Health."
45 DATA "Please Wait Whilst I Set Up The Cheat"
46 DATA XX
47 DATA "Hello Again, Sorry For The Delay. Please Insert Your OPERATION WOLF Disc In Drive A:","When You Are Ready Press Space."
48 DATA XX
49 DATA 01,C0,7F,ED,49,21,26,A0,CD,D4,BC,79,22,27,A0,32,29,A0,21,00,01,11
50 DATA 00,00,0E,41,DF,27,A0,21,2A,A0,22,11,01,C3,00,01,84,00,00,00,F3,31
51 DATA FE,BF,3E,09,ED,4F,21,E4,1C,01,E0,03,16,03,ED,5F,AE,AA,77,57,23,0B
52 DATA 14,79,B0,CA,4B,A0,C3,3A,A0,11,F7,1C,21,CD,03,ED,5F,EB,AE,EB,12,2B
53 DATA 13,7D,B4,C2,51,A0,EB,11,BE,03,2B,35,1B,7A,FE,FF,C2,62,A0,23,E8,21
54 DATA 06,1D,01,64,00,11,05,1D,ED,B8,21,25,1D,01,9F,03,ED,5F,AE,77,23,0B
55 DATA 78,B1,C2,7E,A0,C3,8C,A0,01,E8,FE,ED,79,3A,00,00,FE,F3,C2,9B,A0,18
56 DATA FE,21,3F,1D,11,3E,1D,01,64,00,ED,B8,01,55,03,21,6F,1D,DD,21,6F,1D
57 DATA 00,00,00,00,ED,5F,DD,AC,96,DD,AD,77,0B,79,23,B0,C2,C6,A0,C3,C9,A0
58 DATA C3,B4,A0,21,6F,1D,11,6E,1D,01,64,00,ED,B8,01,25,03,21,9F,1D,DD,21
59 DATA 9F,1D,00,00,00,00,ED,5F,DD,AC,96,DD,AD,77,0B,79,23,B0,C2,F4,A0,C3
60 DATA F7,A0,C3,E2,A0,11,17,03,2B,34,1B,7A,FE,FF,C2,FA,A0,23,EA,21,AD,1D
61 DATA 11,AC,1D,01,64,00,ED,B8,21,C9,1D,01,FB,02,ED,5F,AE,77,23,0B,79,B0
62 DATA C2,16,A1,21,3E,A1,11,80,BE,ED,53,F0,1E,01,20,00,ED,B0,21,E6,1D,11
63 DATA 00,A8,01,DE,02,ED,B0,C3,4D,A8,AF,32,81,2C,C3,00,6A
