10 ' The Untouchables Cheat Mode
11 '(C) 1989 1st Choice Software
12 CALL &BC02:CALL &BBFF:BORDER 0:INK 0,0:INK 1,25:PAPER 0:PEN 1:MODE 1
13 PAPER 3:PEN 1:MEMORY &3FFF
14 RESTORE 40:GOSUB 19:PAPER 0:PEN 2:PRINT:PRINT:GOSUB 19
15 RESTORE 49:FOR i=&4000 TO &426C:READ a$:POKE i,VAL("&"+a$):NEXT:RESTORE 47:PEN 3:PRINT:GOSUB 19:RESTORE 76:FOR i=0 TO 14:READ a$:POKE &BE80+i,VAL("&"+a$):NEXT
16 a$=INKEY$:IF a$<>" " THEN 16
17 PEN 1:MODE 1:a$="O.k. Here We Go... ":GOSUB 22:CALL &BC6B,1:CALL &BE80
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
41 DATA "THE UNTOUCHABLES - Cheat Mode"
42 DATA "(C) 1990 1st Choice Software."
43 DATA XX
44 DATA "This Cheat For Ocean's","Untouchables Gives You :-"
45 DATA "Infinite Time","Infinite Life Force On Scene 1","Please Wait Whilst I Set Up The Cheat"
46 DATA XX
47 DATA "Hello Again, Sorry For The Delay. Please Insert Your UNTOUCHABLES Disk In Drive A:","When You Are Ready Press Space."
48 DATA XX
49 DATA F3,31,00,C0,01,C0,7F,ED,49,21,FF,AB,11,40,00,0E,07,CD,CE,BC,CD,87,11
50 DATA F3,11,00,00,CD,BF,11,11,00,01,CD,BF,11,11,00,00,CD,BF,11,16,01,CD,A2
51 DATA 11,01,00,04,CD,79,11,CD,00,80,3E,01,CD,0E,BC,DD,21,DA,10,AF,F5,DD,46
52 DATA 00,48,CD,32,BC,CD,19,BD,CD,19,BD,CD,19,BD,F1,3C,DD,23,FE,04,20,E7,F3
53 DATA CD,87,11,21,00,C0,22,70,11,16,01,CD,A2,11,11,00,04,CD,63,11,16,02,CD
54 DATA A2,11,11,00,00,CD,63,11,16,03,CD,A2,11,01,00,14,CD,79,11,21,00,24,22
55 DATA 70,11,11,00,14,CD,63,11,06,04,16,04,C5,D5,CD,A2,11,11,00,00,CD,63,11
56 DATA D1,14,C1,10,F0,21,00,C0,22,DE,10,CD,A2,11,11,00,00,CD,63,11,CD,9B,11
57 DATA 31,F8,BF,21,CD,10,11,40,00,01,40,00,ED,43,90,80,ED,B0,C3,00,80,AF,32
58 DATA E1,0F,32,D2,0F,32,16,46,C3,90,10,00,0B,02,01,00,82,46,6C,6F,70,70,79
59 DATA 20,44,69,73,6B,20,43,6F,6E,74,72,6F,6C,6C,65,72,20,52,6F,75,74,69,6E
60 DATA 65,73,20,57,72,69,74,74,65,6E,20,42,79,20,4A,61,73,6F,6E,20,42,72,6F
61 DATA 6F,6B,73,20,31,39,38,38,20,2D,20,48,69,20,48,41,43,4B,45,52,20,49,27
62 DATA 64,20,42,65,20,49,6E,74,65,72,65,73,74,65,64,20,54,6F,20,48,65,72,65
63 DATA 20,46,72,6F,6D,20,59,6F,75,20,21,20,54,65,6C,65,70,68,6F,6E,65,20,30
64 DATA 36,30,32,20,33,39,37,33,35,31,21,00,18,A7,ED,52,E5,C1,2A,DE,10,19,11
65 DATA 00,80,ED,B0,ED,53,70,11,C9,2A,DE,10,ED,5B,70,11,ED,B0,ED,53,70,11,C9
66 DATA 01,7E,FA,3E,01,ED,79,21,00,00,06,02,2B,7C,B5,20,FB,10,F9,C9,01,7E,FA
67 DATA AF,ED,79,C9,F5,C5,D5,7A,32,64,12,CD,BF,11,11,61,12,CD,FF,11,CD,1E,12
68 DATA 21,6B,12,CD,3A,12,D1,C1,F1,C9,F5,C5,D5,E5,7A,B7,28,12,CD,F2,11,CD,E3
69 DATA 11,3A,52,12,CB,6F,28,F6,E1,D1,C1,F1,C9,D5,11,5E,12,CD,FF,11,D1,18,E7
70 DATA D5,11,5C,12,CD,FF,11,21,52,12,CD,3A,12,D1,C9,D5,7A,32,5B,12,11,58,12
71 DATA CD,FF,11,D1,C9,01,7E,FB,C5,1A,F5,13,ED,78,87,30,FB,FA,06,12,1A,0C,ED
72 DATA 79,0D,3E,05,3D,20,FD,F1,3D,20,E8,C1,C9,2A,DE,10,01,7E,FB,ED,78,FE,C0
73 DATA 38,06,0C,ED,78,77,0D,23,ED,78,F2,30,12,E6,20,20,F1,C9,ED,78,FE,C0,38
74 DATA FA,0C,ED,78,77,0D,23,3E,05,3D,20,FD,ED,78,E6,10,20,E9,C9,00,00,00,02
75 DATA 04,00,03,0F,00,00,01,08,02,07,00,09,4C,00,00,00,C1,06,C1,2A,FF,00,00
76 DATA F3,21,00,40,11,00,10,01,00,05,ED,B0,C3,00,10
