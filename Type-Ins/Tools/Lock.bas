5 MODE 2
10 '**** LOCK ****
20 '
30 y=0:RESTORE 100
40 FOR x=&4200 TO &4386
50 READ a$:a=VAL("&"+a$)
55 PRINT a$;" ";:CALL &BB18:t=t+1:IF t=8 THEN PRINT:t=0
60 y=y+a:POKE x,a:NEXT
70 IF y=37465 THEN 590
80 PRINT"Error in Lock":END
90 '
100 DATA fe,00,20,03,c3,3b,43,fe
110 DATA 01,20,07,dd,36,0f,f6,0e
120 DATA 10,c9,fe,02,20,07,dd,36
130 DATA 0c,f9,0e,0d,c9,fe,03,20
140 DATA 0f,dd,36,1e,e9,dd,7e,0c
150 DATA d6,10,dd,77,0c,0e,1f,c9
160 DATA fe,04,20,07,dd,36,11,f6
170 DATA 0e,12,c9,fe,05,20,07,dd
180 DATA 36,10,f6,0e,11,c9,fe,06
190 DATA 20,07,dd,36,0d,f8,0e,0e
200 DATA c9,fe,07,20,07,dd,36,1b
210 DATA ee,0e,1c,c9,fe,08,20,07
220 DATA dd,36,0e,f7,0e,0f,c9,fe
230 DATA 09,20,07,dd,36,23,c0,0e
240 DATA 24,c9,fe,0a,20,13,dd,e5
250 DATA e1,11,06,00,19,7c,d6,10
260 DATA dd,75,15,dd,77,16,0e,17
270 DATA c9,fe,0b,20,13,dd,e5,e1
280 DATA 11,06,00,19,7c,d6,10,dd
290 DATA 75,14,dd,77,15,0e,16,c9
300 DATA fe,0c,20,13,dd,e5,e1,11
310 DATA 07,00,19,7c,d6,10,dd,75
320 DATA 10,dd,77,11,0e,12,c9,fe
330 DATA 0d,20,0f,dd,7e,03,d6,10
340 DATA dd,77,03,dd,36,1a,e9,0e
350 DATA 1b,c9,dd,36,1d,20,dd,36
360 DATA 1e,eb,0e,1f,c9,f3,21,39
370 DATA 7d,11,39,5d,00,01,00,0d
380 DATA ed,b0,21,36,6d,11,37,6d
390 DATA 01,00,10,36,00,ed,b0,36
400 DATA c3,23,36,34,23,36,43,21
410 DATA d5,42,11,39,6d,01,0d,00
420 DATA ed,b0,21,40,6d,36,eb,21
430 DATA 50,7d,11,50,6d,01,15,00
440 DATA ed,b0,21,ff,40,dd,21,58
450 DATA 7d,23,e5,7e,cd,00,42,dd
460 DATA e5,e1,5d,7c,d6,10,57,06
470 DATA 00,dd,09,ed,b0,ed,73,00
480 DATA 40,c3,39,6d,ed,7b,00,40
490 DATA e1,18,de,e1,ed,4b,02,40
500 DATA d9,c3,89,be,22,d7,42,7c
510 DATA d6,10,67,22,fb,42,22,32
520 DATA 43,e5,7c,d6,10,67,22,da
530 DATA 42,e1,2b,2b,2b,22,e3,42
540 DATA 23,22,e6,42,11,09,00,19
550 DATA 22,03,43,11,10,00,19,22
560 DATA 0b,43,11,00,10,19,22,08
570 DATA 43,11,08,00,19,22,17,43
580 DATA f3,d9,ed,43,02,40,c9
590 '
600 '**** KEY ****
610 '
620 y=0:x=&4100:RESTORE 740
630 WHILE a$<>"00"
640 READ a$:y=y+VAL("&"+a$)
650 POKE x,VAL("&"+LEFT$(a$,1))
660 POKE x+1,VAL("&"+RIGHT$(a$,1))
670 x=x+2:WEND
680 '
690 '
