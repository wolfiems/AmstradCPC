10 ' Karnov Cheat Mode
11 '(C) 1989 1st Choice Software
12 MEMORY &4FFF:CALL &BC02:CALL &BBFF:BORDER 0:INK 0,0:INK 1,25:PAPER 0:PEN 1:MODE 1
13 PAPER 3:PEN 1
14 RESTORE 42:GOSUB 21:PAPER 0:PEN 2:PRINT:PRINT:GOSUB 21
15 RESTORE 50:FOR i=&BE80 TO &BECA:READ a$:POKE i,VAL("&"+a$):NEXT
16 RESTORE 30000:FOR i=&5000 TO &5032:READ a$:POKE i,VAL("&"+a$):NEXT
17 RESTORE 48:PEN 3:PRINT:GOSUB 21
18 a$=INKEY$:IF a$<>" " THEN 18
19 PEN 1:PRINT:a$="O.k. Here We Go...":GOSUB 24:CALL &BD37:CALL &BC6B,1:CALL &5000
20 END
21 ' Messages
22 READ a$:IF a$="XX" THEN RETURN
23 GOSUB 24:GOTO 22
24 ' Print Routine For Mode 1 - Rather Long Winded N'est Pas ?
25 t=1:b$="":ma=39
26 IF LEN(a$)<ma+1 THEN c$=a$:GOTO 41
27 c$=""
28 mat=1
29 b$=""
30 WHILE MID$(a$,t,1)<>" " AND t<>LEN(a$)+1
31 b$=b$+MID$(a$,t,1)
32 t=t+1:WEND
33 IF MID$(a$,t,1)=" " THEN b$=b$+" ":t=t+1
34 mat=mat+LEN(b$)
35 IF mat>ma THEN 38
36 IF mat<ma+1 THEN c$=c$+b$:IF t<LEN(a$)+1 THEN 29
37 IF t=LEN(a$) OR t>LEN(a$) THEN GOSUB 41:PRINT:RETURN
38 t=t-LEN(b$)
39 GOSUB 41:PRINT
40 c$="":GOTO 28
41 FOR x=1 TO LEN(c$):PRINT MID$(c$,x,1);CHR$(24);" ";CHR$(24);CHR$(8);:SOUND 1,ASC(MID$(c$,x,1))+100,1:SOUND 2,ASC(MID$(c$,x,1))+200,1:NEXT:PAPER 0:PRINT" ":RETURN
42 ' Place Instruction Data
43 DATA "KARNOV - Cheat Mode"
44 DATA "(C) 1989 1st Choice Software."
45 DATA XX
46 DATA "This Cheat For U.S. Golds Karnov Gives You Infinite Lives."
47 DATA XX
48 DATA "Please Insert Your KARNOV Tape And Press Space When You Are Ready."
49 DATA XX
50 DATA F3,31,00,C0,01,C0,7F,ED,49,CD,37,BD,06,00,11,00,10,CD,77,BC,EB,CD
51 DATA 83,BC,E5,CD,7A,BC,3E,C3,21,A8,BE,32,16,BD,22,17,BD,C9,F3,3E,C9,32
52 DATA 39,A5,CD,0C,A5,DD,21,B1,A7,11,AB,00,CD,C2,A5,21,C4,BE,22,5A,A8,C3
53 DATA E8,A7,AF,32,DB,40,C3,00,40
30000 DATA F3,01,C0,7F,ED,49,31,00,C0,CD,37,BD,CD,65,BC,3E,FF,CD,6B,BC,06,00
30010 DATA 11,00,01,CD,77,BC,EB,CD,83,BC,E5,CD,7A,BC,E1,E5,7C,FE,30,C2,9C,BE
30020 DATA 21,C4,BE,22,50,30,C9