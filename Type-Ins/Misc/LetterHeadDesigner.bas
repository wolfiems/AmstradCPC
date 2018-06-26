10 REM      Letter head designer
20 REM        by Chris Nixon
30 REM (c) Computing with the Amstrad
40 REM ------------- CPC ------------
50 MEMORY &6FFF:MODE 2:LOCATE 35,12:PRINT"PLEASE WAIT ...":GOSUB 750:DEF FN bit=ASC(MID$(a$,l,1)):m0=&9000:m1=&9001:m2=&9002:m3=&9003:m4=&9004:m5=&9005:m6=&9006:m7=&9007:GOSUB 140
60 SOUND 1,200,2:|XOR,ik(pt,0),ik(pt,1):WHILE JOY(0)<>0:WEND:POKE &900C,fast
70 a$=INKEY$:j=JOY(0):IF a$<>CHR$(242) AND j<>4 THEN 90 ELSE IF pt=0 OR pt=7 THEN 70 ELSE |XOR,ik(pt,0),ik(pt,1):pt=pt-1:GOTO 60
80 IF a$<>CHR$(242) AND j<>4 THEN 90 ELSE IF pt=0 OR pt=7 THEN 70
90 IF a$<>CHR$(243) AND j<>8 THEN 100 ELSE IF pt=6 OR pt=13 THEN 70 ELSE |XOR,ik(pt,0),ik(pt,1):pt=pt+1:GOTO 60
100 IF a$<>CHR$(240) AND j<>1 THEN 110 ELSE IF pt<7 THEN 70 ELSE |XOR,ik(pt,0),ik(pt,1):pt=pt-7:GOTO 60
110 IF a$<>CHR$(241) AND j<>2 THEN 120 ELSE IF pt>6 THEN 70 ELSE |XOR,ik(pt,0),ik(pt,1):pt=pt+7:GOTO 60
120 IF a$<>CHR$(224) AND j<>16 THEN 70 ELSE SOUND 1,100,2:ON pt+1 GOSUB 190,210,220,230,250,390,300,340,350,360,370,410,420,430
130 |FLUSH:GOTO 70
140 DIM ik(15,1):RESTORE 170:FOR l=0 TO 14:READ ik(l,0),ik(l,1):NEXT:CALL &BBFF:CALL &BBBA:MODE 2:INK 1,1:FOR x=0 TO 358 STEP 2:MOVE x,0:DRAWR 0,118:NEXT:GOSUB 180:|GPEN,1:|GPAPER,0:MOVE 380,110:a$="Computing With The Amstrad CPC":GOSUB 710
150 MOVE 422,90:a$="LETTERHEAD DESIGNER":GOSUB 700:MOVE 445,70:TAG:PRINT"by CHRIS NIXON";:MOVE 0,0:DRAW 639,0:DRAW 639,118:DRAW 0,118:DRAW 0,0:MOVE 1,0:DRAW 1,118:MOVE 638,0:DRAW 638,118:MOVE 358,0:DRAW 358,118:MOVE 359,0:DRAW 359,118:MOVE 359,50
160 DRAW 638,50:WINDOW 47,79,23,24:BORDER 0:INK 1,26:RETURN
170 DATA 8,55,58,55,108,55,158,55,208,55,258,55,308,55,8,27,58,27,108,27,158,27,208,27,258,27,308,27,358,27
180 pt=0:eor=0:fo=1:fast=1:sd=0:x=320:y=250:POKE m0,x MOD 256:POKE m1,x\256:POKE m2,y MOD 256:POKE m3,y\256:FOR a=1 TO 14:ON a GOSUB 530,460,470,480,630,490,510,540,550,620,560,730,650,660:NEXT:|GPEN,1:|CROSS:PRINT CHR$(23);CHR$(0);:RETURN
190 TAGOFF:|CROSS
200 INPUT"Enter X and Y coords: ",x,y:IF y<121 THEN 200 ELSE POKE m0,x MOD 256:POKE m1,x\256:POKE m2,y MOD 256:POKE m3,y\256:|CROSS:CLS:RETURN
210 |GPEN,1:|GPAPER,0:POKE &900B,eor:|PEN:SOUND 1,200,2:RETURN
220 |GPEN,1:|GPAPER,0:|SQUARE:sd=1:|GPEN,0:GOSUB 260:|GPEN,1:|CROSS:SOUND 1,200,2:sd=0:RETURN
230 TAGOFF:|GPEN,1:|GPAPER,0:|DR:PRINT CHR$(23);CHR$(eor);:x1=PEEK(m1)*256+PEEK(m0):y1=PEEK(m3)*256+PEEK(m2):x2=PEEK(m5)*256+PEEK(m4):y2=PEEK(m7)*256+PEEK(m6):MOVE x1,y1:DRAW x2,y2
240 POKE m0,PEEK(m4):POKE m1,PEEK(m5):POKE m2,PEEK(m6):POKE m3,PEEK(m7):|CROSS:RETURN
250 |GPEN,1:|GPAPER,0:|SQUARE:TAGOFF:PRINT CHR$(23);CHR$(eor);:GOSUB 260:|GPEN,1:|CROSS:RETURN
260 x1=PEEK(m1)*256+PEEK(m0):y1=PEEK(m3)*256+PEEK(m2):x2=PEEK(m5)*256+PEEK(m4):y2=PEEK(m7)*256+PEEK(m6)
270 IF sd=0 THEN MOVE x1,y1:DRAW x2,y1:DRAW x2,y2:DRAW x1,y2:DRAW x1,y1:RETURN
280 IF y2>y1 THEN s=-2 ELSE s=2
290 FOR yy=y2 TO y1 STEP s:MOVE x1,yy:DRAW x2,yy:NEXT:RETURN
300 |GPEN,1:|GPAPER,0:|PHOTO:x1=PEEK(m1)*256+PEEK(m0):y1=PEEK(m3)*256+PEEK(m2):x2=PEEK(m5)*256+PEEK(m4):y2=PEEK(m7)*256+PEEK(m6):x3=PEEK(&9009)*256+PEEK(&9008):y3=PEEK(&900B)*256+PEEK(&900A)
310 IF y1<y2 THEN s1=2 ELSE s1=-2
320 IF x1<x2 THEN s2=1 ELSE s2=-1
330 oy=0:FOR yy=y1 TO y2 STEP s1:ox=0:FOR xx=x1 TO x2 STEP s2:PLOT x3+ox,y3+oy,TEST(xx,yy):ox=ox+s2:NEXT:oy=oy+s1:NEXT:SOUND 1,200,2:|GPEN,1:|CROSS:RETURN
340 TAGOFF:INPUT"Filename";a$:CLS:|GPEN,1:|CROSS:SAVE a$,b,&C000,&4000:|CROSS:RETURN
350 TAGOFF:INPUT"Filename";a$:LOAD a$,&C000:CLS:GOSUB 180:|XOR,ik(pt,0),ik(pt,1):|GPEN,1:SOUND 1,200,2:RETURN
360 |GPEN,1:|CROSS:|DUMP,398,278:|CROSS:SOUND 1,200,2:RETURN
370 fo=fo+1:IF fo=6 THEN fo=1
380 ON fo GOSUB 560,570,580,590,600:GOTO 440
390 TAGOFF:LINE INPUT a$:w=LEN(a$)*8:IF fo=5 THEN h=32 ELSE h=16
400 |GPEN,1:|GPAPER,0:POKE m4,w MOD 256:POKE m5,w\256:POKE m6,h MOD 256:POKE m7,h\256:WHILE INKEY(18)=0:WEND:|TXT:PRINT CHR$(23);CHR$(eor);:ON fo GOSUB 680,690,700,710,720:|CROSS:CLS:RETURN
410 eor=eor XOR 1:ON eor+1 GOSUB 730,740:GOTO 440
420 fast=fast XOR 1:ON fast+1 GOSUB 640,650:GOTO 440
430 sd=sd XOR 1:ON sd+1 GOSUB 660,670
440 |XOR,ik(pt,0),ik(pt,1):k1=-1:k2=-1:WHILE INKEY(18)=0:WEND:RETURN
450 |GPEN,0:FOR y1=y-4 TO y-44 STEP-2:MOVE x+3,y1:DRAWR 41,0:NEXT:|GPEN,1:FOR y1=y TO y-40 STEP-2:MOVE x,y1:DRAWR 40,0:NEXT:|GPEN,0:MOVE x,y:DRAWR 40,0:DRAWR 0,-40:DRAWR -40,0:DRAWR 0,40:RETURN
460 x=58:y=108:GOSUB 450:MOVE x+32,y-14:DRAWR -7,6:DRAWR -17,-16:DRAWR 0,-6:DRAWR 6,0:DRAWR -7,6:DRAWR 7,-6:DRAWR 17,16:RETURN
470 x=108:y=108:GOSUB 450:MOVE x+20,y-4:DRAWR 11,-10:DRAWR -15,-14:DRAWR -11,10:DRAWR 15,14:DRAWR 6,0:DRAWR 11,-10:DRAWR -21,-20:DRAWR -11,10:DRAWR 0,4:MOVER 10,-10:DRAWR 0,-4:MOVER 20,20:DRAWR -4,0:RETURN
480 x=158:y=108:GOSUB 450:MOVE x+20,y-6:DRAWR -15,-14:MOVE x+34,y-6:DRAWR -29,-28:MOVE x+34,y-20:DRAWR -15,-14:RETURN
490 x=8:y=54:GOSUB 450:MOVE x+6,y-16:DRAWR 28,0:DRAWR 0,-18:DRAWR -28,0:DRAWR 0,18:MOVE x+10,y-22:DRAWR 20,0:DRAWR 0,-4:DRAWR -6,0:DRAWR 0,-2:DRAWR -8,0:DRAWR 0,2:DRAWR -6,0:DRAWR 0,4
500 p=0:FOR y1=y-4 TO y-12 STEP-2:MOVE x+12+p,y1:DRAWR 16-(2*p),0:p=p+2:NEXT:RETURN
510 x=58:y=54:GOSUB 450:MOVE x+6,y-16:DRAWR 28,0:DRAWR 0,-18:DRAWR -28,0:DRAWR 0,18:MOVE x+10,y-22:DRAWR 20,0:DRAWR 0,-4:DRAWR -6,0:DRAWR 0,-2:DRAWR -8,0:DRAWR 0,2:DRAWR -6,0:DRAWR 0,4
520 p=0:FOR y1=y-12 TO y-4 STEP 2:MOVE x+12+p,y1:DRAWR 16-(2*p),0:p=p+2:NEXT:RETURN
530 x=8:y=108:GOSUB 450:MOVE x+10,y-20:DRAWR 6,0:MOVER 8,0:DRAWR 6,0:MOVE x+20,y-10:DRAWR 0,-6:MOVER 0,-8:DRAWR 0,-6:RETURN
540 x=208:y=108:GOSUB 450:MOVE x+8,y-6:DRAWR 24,0:DRAWR 0,-28:DRAWR -24,0:DRAWR 0,28:MOVER 4,-4:DRAWR 16,0:DRAWR 0,-20:DRAWR -16,0:DRAWR 0,20:RETURN
550 x=308:y=108:GOSUB 450:MOVE x+4,y-10:DRAWR 32,0:DRAWR 0,-20:DRAWR -32,0:DRAWR 0,20:MOVER 4,0:DRAWR 0,4:DRAWR 3,0:DRAWR 0,-4:MOVE x+14,y-13:DRAWR 12,0:DRAWR 0,-12:DRAWR -12,0:DRAWR 0,12:RETURN
560 GOSUB 610:TAG:PRINT"FONT";:MOVE x+16,y-22:PRINT"1";:RETURN
570 GOSUB 610:GOSUB 690:MOVE x+16,y-22:a$="2":GOTO 690
580 GOSUB 610:GOSUB 700:MOVE x+16,y-22:a$="3":GOTO 700
590 GOSUB 610:GOSUB 710:MOVE x+16,y-22:a$="4":GOTO 710
600 GOSUB 610:a$="HIGH":MOVE x+4,y-8:GOTO 720
610 x=158:y=54:GOSUB 450:|GPEN,0:|GPAPER,1:MOVE x+4,y-4:a$="FONT":RETURN
620 x=108:y=54:GOSUB 450:MOVE x+4,y-36:DRAWR 32,0:DRAWR 0,12:DRAWR -32,0:DRAWR 0,-12:MOVE x+8,y-24:DRAWR 0,16:DRAWR 24,0:DRAWR 0,-16:FOR l=y-12 TO y-24 STEP-4:MOVE x+12,l:DRAWR 16,0:NEXT:RETURN
630 x=258:y=108:GOSUB 450:|GPEN,0:|GPAPER,1:TAG:MOVE x+4,y-8:a$="TEXT":GOSUB 720:RETURN
640 x=258:y=54:GOSUB 450:|GPEN,0:|GPAPER,1:MOVE x+14,y-6:|TALL,246:|TALL,246:RETURN
650 x=258:y=54:GOSUB 450:|GPEN,0:|GPAPER,1:MOVE x+6,y-6:|TALL,246:|TALL,246:|TALL,246:|TALL,246:RETURN
660 x=308:y=54:GOSUB 450:MOVE x+6,y-6:DRAWR 28,0:DRAWR 0,-28:DRAWR -28,0:DRAWR 0,28:RETURN
670 x=308:y=54:GOSUB 450:FOR l=y-6 TO y-34 STEP-2:MOVE x+6,l:DRAWR 28,0:NEXT:RETURN
680 TAG:PRINT a$;:TAGOFF:RETURN
690 FOR l=1 TO LEN(a$):b=FN bit:|FEINT,b:NEXT:RETURN
700 FOR l=1 TO LEN(a$):b=FN bit:|BOLD,b:NEXT:RETURN
710 FOR l=1 TO LEN(a$):b=FN bit:|ITALIC,b:NEXT:RETURN
720 FOR l=1 TO LEN(a$):b=FN bit:|TALL,b:NEXT:RETURN
730 x=208:y=54:GOSUB 450:|GPEN,0:|GPAPER,1:MOVE x+4,y-8:a$="OVER":GOSUB 720:RETURN
740 x=208:y=54:GOSUB 450:|GPEN,0:|GPAPER,1:MOVE x+8,y-8:a$="XOR":GOSUB 720:RETURN
750 RESTORE 800:ln=760:st=&7000:ed=&7585:GOSUB 770
760 ln=1860:st=&8000:ed=&81CB:GOSUB 770:CALL &7000:CALL &8000:RETURN
770 FOR adr=st TO ed STEP 13:READ byte$:chk=0:FOR i=0 TO 12:v=VAL("&"+MID$(byte$,i*2+1,2)):POKE adr+i,v:chk=chk+v:NEXT
780 IF chk<>VAL("&"+RIGHT$(byte$,3)) THEN PRINT"ERROR in LINE";ln:STOP
790 ln=ln+10:NEXT:RETURN
800 DATA 211675CDD4BCD801DE7421737563D
810 DATA C3D1BCDD7E00327975DD7E0132659
820 DATA 7A75DD7E02327775DD7E033278572
830 DATA 753E01CD59BC2A7775112800193FE
840 DATA 227B750614C5ED5B7775ED4B7B5D8
850 DATA 752A79753EFFCD5FBC2A79752B5F5
860 DATA 227975C110E53E00C359BCCDB165A
870 DATA 700E557EA1DD770023DD2379EE5D0
880 DATA FF4F10F2C39C70CDB1707ECB3F795
890 DATA B6DD770023DD2310F4C39C70CD6CD
900 DATA B17006047ECB3FDD770023DD2352A
910 DATA 10F506047EDD770023DD2310F750B
920 DATA CD09B93EFF215F75CDA8BB3EFF72E
930 DATA CD5ABB3E00C363BBDD7E003277605
940 DATA 75CD06B93A7775CDA5BBDD215F6B1
950 DATA 753E01CD63BB0608C9CDB1707E5E2
960 DATA DD7700DD770123DD23DD2310F25CE
970 DATA CD09B93EFF215F75CDA8BB3EFF72E
980 DATA CD5ABB3EFF216775CDA8BB11F8755
990 DATA FF21F0FFCDC3BB3EFFCD5ABB1188A
1000 DATA 0000211000CDC3BB3E00C363BB49B
1010 DATA C9C9DD7E00C3DEBBDD7E00C3E484B
1020 DATA BB3E01CD59BCCDC473ED5B00906B8
1030 DATA 2A0290ED530890220A90CDD273562
1040 DATA 3E09CD1EBBC2C4733E2FCD1EBB5F9
1050 DATA C478713E4CCD1EBBC478713E4F617
1060 DATA CD1EBBC48C713E01CDDEBB3E0164B
1070 DATA CD59BCCD7774ED5B0890ED53006BA
1080 DATA 902A0A90220290CD837418BD3E4DF
1090 DATA 01CDDEBB3E00CD59BCED5B009065F
1100 DATA 2A0290C3EABB3E00CDDEBB3E00606
1110 DATA CD59BCED5B00902A0290C3EABB6DE
1120 DATA CDC4733E01CD59BCED5B00902A627
1130 DATA 0290ED530890220A90CDD27338570
1140 DATA 16CD7774ED5B0890ED5300902A5A8
1150 DATA 0A90220290CD837418E53E00CD51A
1160 DATA 59BCC3C473CDA071CDC4733E01730
1170 DATA CD59BCED5B00902A0290ED53085BE
1180 DATA 90ED530490220A90220690CD83528
1190 DATA 74CDD273382AED5B00902A029057C
1200 DATA CDC0BBED5B08902A0A90CDF6BB76A
1210 DATA ED5B00902A0290CDC0BBED5B0862C
1220 DATA 902A0A90CDF6BB18D1ED5B089069B
1230 DATA ED5304902A0A902206903E00CD45B
1240 DATA 59BCC3C473CDC4733E01CD59BC734
1250 DATA CD7774ED5B00902A0290ED5308594
1260 DATA 90220A90CDD273381DED5B0890593
1270 DATA ED5300902A0A90220290CDD67255D
1280 DATA ED5B00902A0290CDD67218DE3E5DD
1290 DATA 00CD59BCC3C473CDA071CDC4737BE
1300 DATA 3E01CD59BCCD7774ED5B00902A5DB
1310 DATA 0290ED530890220A90ED5304904FA
1320 DATA 220690CDD2733808CD0E73CD0E533
1330 DATA 7318F33E00CD59BCED5B08902A5A8
1340 DATA 0A90ED530490220690C3C4733E55E
1350 DATA 01CD59BCED5B00902A0290CDC0604
1360 DATA BBED5B0490210000CDF9BB210055A
1370 DATA 00ED5B0690A7ED52110000CDF959B
1380 DATA BB210000ED5B0490A7ED52545D54F
1390 DATA 210000CDF9BB1100002A0690C3436
1400 DATA F9BBED5B00902A0290CDC0BB2A6BA
1410 DATA 0890ED5B0090A7ED52545D2100528
1420 DATA 00CDF9BB2A0A90ED5B0290A7ED6B3
1430 DATA 52110000CDF9BBED5B00902A0A4F0
1440 DATA 90CDF6BBED5B00902A0290C3F675B
1450 DATA BBCD8472CDC4733E01CD59BCED790
1460 DATA 5B0090ED5308902A0290220A9043B
1470 DATA CDD2733808CD7C73CD7C7318F36D5
1480 DATA 3E00CD59BCC3C473ED5B08902A624
1490 DATA 0A90CDC0BB2A0490ED5B0090A761F
1500 DATA ED52545D210000CDF9BB2A0690552
1510 DATA ED5B0290A7ED52110000CDF9BB652
1520 DATA 2A0090ED5B0490A7ED52545D2154E
1530 DATA 0000CDF9BBED5B08902A0A90C35E8
1540 DATA F6BB3E09CD1EBB20F9CD24BBA770A
1550 DATA 20F3C93A0C90A7CCCE74ED5B086B7
1560 DATA 9097BB2003BA28193E08CD1EBB4EC
1570 DATA 20073E4ACD1EBB280BED5B0890468
1580 DATA 1BED53089018213E7EBB20053E406
1590 DATA 02BA28173E01CD1EBB20073E4B390
1600 DATA CD1EBB2809ED5B089013ED5308512
1610 DATA 902A0A903E8EBD20053E01BC28425
1620 DATA 183E00CD1EBB20073E48CD1EBB44F
1630 DATA 280A2A0A902323220A9018222A25C
1640 DATA 0A903E7CBD200497BC28163E02406
1650 DATA CD1EBB20073E49CD1EBB28082A454
1660 DATA 0A902B2B220A903E09CD1EBB203B9
1670 DATA 093E4CCD1EBB2002A7C937C93E509
1680 DATA 01CD59BCED5B00902A0290CDC0604
1690 DATA BB11FAFF210000CDC3BB110400546
1700 DATA 210000CDF9BB110400210000CD3A5
1710 DATA C3BB110400210000CDF9BB11FA540
1720 DATA FF210600CDC3BB11000021FCFF59E
1730 DATA CDF9BB11000021FCFFCDC3BB1170A
1740 DATA 000021FCFFC3F9BB0E1406FF105CA
1750 DATA FE0D20F9C9CD09BB38FBC91675705
1760 DATA C31070C31271C31171C35970C361D
1770 DATA 6F70C38170C31371C31971C3CC6B6
1780 DATA 70C3A071C3D971C37774C3D87480E
1790 DATA C34172C3CA72C38472C34E73C3775
1800 DATA 1F71584FD24745D45055D4464556D
1810 DATA 494ED4424F4CC44954414C49C3542
1820 DATA 475045CE4750415045D254414C4CA
1830 DATA CC4DD644D243524F53D3464C555F6
1840 DATA 53C85458D4424FD85351554152590
1850 DATA C550484F54CF5045CE00000000432
1860 DATA 00000000000000000000000000000
1870 DATA 00000000000000000000000000000
1880 DATA 00000000000000000000000000000
1890 REM **** block 2 ****
1900 DATA 3EC9320080010E80211880C3D1495
1910 DATA BC1380C31C8044554DD0000000464
1920 DATA 0000B7C22F80218E0122C88121464
1930 DATA 900122C481C36B80FE02C27D81666
1940 DATA DD6E02DD6603CB8522C881CB7C695
1950 DATA C27D81119001AFE5ED52E1D27D765
1960 DATA 81DD5E00DD5601CB83CB7AC27D6C2
1970 DATA 817BB2CA7D81ED53C481AFED527E9
1980 DATA DA7D81060AAFCD2BBDDA79801062F
1990 DATA F7C35B81210000110000CDC9BB519
2000 DATA 210000117F02CDCFBB118F01213CC
2010 DATA 0000CDD2BB3E0632AF8121AD8154F
2020 DATA CD6681FD21CA81DD21B381DD36762
2030 DATA 00003E09CD1EBBCAB880CB79C25F5
2040 DATA 5B812AC481110600AFE5ED5222557
2050 DATA C481E13E03D2DD80DDCB00CE7D789
2060 DATA F532AF8121AD81CD6681F1CB3F755
2070 DATA 32C7812AC881E5110600AFED525D7
2080 DATA 22C881E11100002323CDC0BBDD5C8
2090 DATA CB008621A881CD6681014001C5556
2100 DATA ED4BC681FD36000011000021FE4E2
2110 DATA FFC5CDF3BBC1B7CA228179FDB6950
2120 DATA 00FD7700CB39CB3910E4FD7E005EB
2130 DATA CD73812AC781260029110100CD461
2140 DATA C3BBC10B78B1C20381DD7E00EE702
2150 DATA 01DD7700CB47C2FA8021B181CD6C3
2160 DATA 6681DDCB004ECAAB803E0832AF5F9
2170 DATA 8121AD81C366817EE67FCD738171E
2180 DATA CB7EC023C366814FCD2BBD79D872B
2190 DATA C37381C9218D817EE67FCD5ABB774
2200 DATA CB7EC023C38081496E76616C69653
2210 DATA 6420506172616D6574657273204B8
2220 DATA 696E207C44554DD01B2A044081433
2230 DATA 1B4100800D8A00000000000000173
2240 DATA 00000000000000000000000030030
2250 DATA 00000000000000000000000000000