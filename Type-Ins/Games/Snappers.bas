10 ' Snappers
20 ' By D.L Lau
30 ' (c) Computing with the Amstrad
40 ' ------------- CPC ------------
50 DEFINT a-s:SYMBOL AFTER 256
60 MEMORY &93FF:SYMBOL AFTER 250
70 SYMBOL 251,0,60,126,126,126,126,60:SYMBOL 252,0,0,24,60,60,24
80 ENV 1,100,10,3:ENT 1,100,-5,1
90 ENV 2,100,2,5:ENT -2,50,5,20
100 ENT 3,50,-2,2:ENT -4,50,-1,1:ENV 3,10,1,1
110 ENV 5,50,5,3:ENT 6,50,13,4
120 FOR f=1 TO 12:READ i,j:INK i,j:NEXT
130 DATA 0,0,1,24,2,20,3,6,4,26,5,0,6,2,7,8,8,3,9,12,10,14,11,18
140 INK 12,15,26:INK 13,26,15:INK 14,0,26:INK 15,26,0
150 IF PEEK(&160)<>255 THEN GOSUB 2280
160 ' Initialisation
170 GOTO 2000
180 BORDER 0:MODE 0:sn=1:sc=0:li=8
190 ON sn GOSUB 540,840,1120,1400,1690
200 CALL &A000:ar=&9210
210 CALL &A093,po
220 FOR f=0 TO 2:POKE &93A1+f,3:NEXT
230 PEN 1:LOCATE 1,4:PRINT STRING$(20,CHR$(238)):LOCATE 1,25:PRINT STRING$(20,CHR$(238)):LOCATE 1,1:PRINT CHR$(11)
240 FOR f=4 TO 24:LOCATE 1,f:PRINT CHR$(238):LOCATE 20,f:PRINT CHR$(238):NEXT
250 LOCATE 2,1:PEN 2:PRINT"Hi":PRINT" Sc":PEN 11:LOCATE 11,1:PRINT"Screen":LOCATE 11,2:PRINT"Lives"
260 eh=0
270 PEN 6:LOCATE 4,1:PRINT h:LOCATE 4,2:PRINT sc:PEN 7:LOCATE 17,1:PRINT sn:LOCATE 17,2:PRINT li
280 POKE ar,0
290 'Start
300 PEN 11:FOR f=0 TO m-1:LOCATE PEEK(&9300+f)+1,PEEK(&9306+f)+1:PRINT CHR$(231):NEXT
310 PEN 3:LOCATE PEEK(&9250)+1,PEEK(&9251)+1:PRINT CHR$(231)
320 POKE &9215,0
330 FOR f=300 TO 40 STEP -20:SOUND 2,f,1,0,0,1,1:NEXT:FOR f=1 TO 150:NEXT
340 ti=606:PLOT 0,400,0
350 IF INKEY(69)=0 OR JOY(0)=1 THEN CALL &A0DA:GOTO 420
360 IF INKEY(38)=0 OR JOY(0)=8 THEN CALL &A14A:GOTO 420
370 IF INKEY(71)=0 OR JOY(0)=2 THEN CALL &A1AE:GOTO 420
380 IF INKEY(46)=0 OR JOY(0)=4 THEN CALL &A218:GOTO 420
390 FOR f=1 TO dy:NEXT
400 FOR f=0 TO m-1:POKE &9212,INT(RND*iq):POKE &9214,f:CALL &A29F:IF PEEK(&9210)=3 THEN 430 ELSE NEXT
410 GOTO 350
420 GOSUB 490:GOTO 390
430 'Deduct life
440 a=PEEK(&9250)+1:b=PEEK(&9251)+1:SOUND 2,100,100,0,2,2:LOCATE a,b:PRINT" "
450 FOR f=0 TO m-1:LOCATE PEEK(&9300+f)+1,PEEK(&9306+f)+1:PRINT" ":NEXT
460 li=li-1:IF li=0 THEN 2180
470 ON sn GOSUB 760,1060,1340,1620,1900
480 POKE &9210,0:GOTO 270
490 'Check Flag
500 ON PEEK(&9210) GOTO 510,530,430:RETURN
510 SOUND 2,400,10,0,1:eh=eh+1:IF eh=no THEN 2150
520 sc=sc+1:PEN 6:LOCATE 4,2:PRINT sc:POKE &9210,0:RETURN
530 SOUND 1,150,30,0,1,1:sc=sc+5:PEN 6:LOCATE 4,2:PRINT sc:POKE ar,0:RETURN
540 ' Screen 1
550 RESTORE 560:GOSUB 1960
560 DATA 033333333313333333
570 DATA 033333333213311113
580 DATA 031113311113333333
590 DATA 031333333333133332
600 DATA 031331111333133111
610 DATA 033333333333133333
620 DATA 033333333333113333
630 DATA 011333133333333333
640 DATA 031333133113334433
650 DATA 031233133333333333
660 DATA 031133333333311113
670 DATA 033333332443333333
680 DATA 033311113333333333
690 DATA 033333333333333313
700 DATA 033333333311113313
710 DATA 011133333333333313
720 DATA 012333333333333213
730 DATA 013331333233111113
740 DATA 033331333333333333
750 DATA 033311333333333333
760 FOR f=0 TO 2:POKE &9300+f,1:NEXT
770 FOR f=4 TO 6:POKE &9306+f-4,f:NEXT
780 RESTORE 790:FOR f=0 TO 5:READ a:POKE &93A6+f,a:NEXT
790 DATA &15,&90,&29,&90,&3d,&90
800 po=&9191
810 POKE &9250,1:POKE &9251,23
820 CALL &A093,po
830 no=261:m=3:RETURN
840 ' Screen 2
850 RESTORE 860:GOSUB 1960
860 DATA 333333333333333344
870 DATA 233333313333333334
880 DATA 111133311133331333
890 DATA 333333333333321333
900 DATA 333333333333111333
910 DATA 344433344333333333
920 DATA 333311334333331111
930 DATA 333333333331333333
940 DATA 333333333331333333
950 DATA 313300000000003333
960 DATA 313333331111333113
970 DATA 313333333333333213
980 DATA 333344433333333313
990 DATA 333442331111133313
1000 DATA 333333333333333333
1010 DATA 333333311111133133
1020 DATA 331233333123333133
1030 DATA 311133333333333133
1040 DATA 321333333333111133
1050 DATA 333333344333333333
1060 FOR f=12 TO 15:POKE &9300+f-12,f:NEXT
1070 FOR f=0 TO 2:POKE &9306+f,13:NEXT
1080 RESTORE 1090:FOR f=0 TO 5:READ a:POKE &93A6+f,a:NEXT
1090 DATA &d4,&90,&d5,&90,&d6,&90
1100 POKE &9250,5:POKE &9251,13
1110 po=&90CD:CALL &A093,po:no=270:m=3:RETURN
1120 ' Screen 3
1130 RESTORE 1140:GOSUB 1960
1140 DATA 233333313333333313
1150 DATA 311113313111113313
1160 DATA 313333313333333213
1170 DATA 313131113311111113
1180 DATA 333133333333333333
1190 DATA 323333311113131111
1200 DATA 333114313333133333
1210 DATA 313333333133133313
1220 DATA 313333111131131113
1230 DATA 311113333333333333
1240 DATA 000000000000013443
1250 DATA 313311133333113333
1260 DATA 313333331113333311
1270 DATA 311133333333331332
1280 DATA 333334233111131333
1290 DATA 333333333333131113
1300 DATA 111333111333133333
1310 DATA 333333123333133313
1320 DATA 311113131113131313
1330 DATA 333333133333331333
1340 FOR f=0 TO 2:POKE &9300+f,f+11:NEXT
1350 FOR f=0 TO 2:POKE &9306+f,14:NEXT
1360 RESTORE 1370:FOR f=0 TO 5:READ a:POKE &93A6+f,a:NEXT
1370 DATA &e7,&90,&e8,&90,&e9,&90
1380 po=&90DD:POKE &9250,1:POKE &9251,14:CALL &A093,po
1390 no=228:m=3:RETURN
1400 ' Screen 4
1410 RESTORE 1420:GOSUB 1960
1420 DATA 333333333334433333
1430 DATA 311113111334333213
1440 DATA 333333333334331113
1450 DATA 343313111133333333
1460 DATA 34331333333OPENIN DIM 33313
1470 DATA 333213133331111113
1480 DATA 311113111333333213
1490 DATA 333333333333333333
1500 DATA 113113111111131133
1510 DATA 333333333333131433
1520 DATA 311133134443134443
1530 DATA 333133133333334233
1540 DATA 313133111111334333
1550 DATA 313333333333334333
1560 DATA 311111333433333313
1570 DATA 333333332433111113
1580 DATA 313344444433433333
1590 DATA 313333333433333243
1600 DATA 313111133333111113
1610 DATA 000000000000333333
1620 FOR f=0 TO 3:POKE &9300+f,f+9:NEXT
1630 FOR f=0 TO 3:POKE &9306+f,23:NEXT
1640 RESTORE 1650:FOR f=0 TO 7:READ a:POKE &93A6+f,a:NEXT
1650 DATA &99,&91,&9a,&91,&9b,&91,&9c,&91
1660 po=&9191:POKE &9250,1:POKE &9251,23
1670 CALL &A093,po:no=227:m=4:RETURN
1680 ' Screen 5
1690 RESTORE 1700:GOSUB 1960
1700 DATA 033333334333331233
1710 DATA 031111334333331333
1720 DATA 031233333313331133
1730 DATA 031333333213333333
1740 DATA 031443311133333333
1750 DATA 031333333433333334
1760 DATA 031333333433333444
1770 DATA 031331333333333334
1780 DATA 033331333311133334
1790 DATA 033313233333133333
1800 DATA 031111113332123331
1810 DATA 033333333311111133
1820 DATA 033333433333334443
1830 DATA 033133443333334333
1840 DATA 011133331111134333
1850 DATA 032133331233333313
1860 DATA 033133331333333313
1870 DATA 033111311333333313
1880 DATA 033333333331111113
1890 DATA 033333333333333332
1900 FOR f=0 TO 3:POKE &9300+f,1:NEXT
1910 FOR f=0 TO 3:POKE &9306+f,f+4:NEXT
1920 RESTORE 1930:FOR f=0 TO 7:READ a:POKE &93A6+f,a:NEXT
1930 DATA &15,&90,&29,&90,&3d,&90,&51,&90
1940 po=&90C9:POKE &9250,1:POKE &9251,13:CALL &A093,po
1950 no=244:m=4:RETURN
1960 FOR f=&9000 TO &9013:POKE f,1:POKE f+420,1:NEXT
1970 FOR f=&9014 TO &91A4 STEP 20:POKE f,1:POKE f+19,1:NEXT
1980 d=&9015:FOR f=1 TO 20:READ a$
1990 FOR g=1 TO 18:POKE d,VAL(MID$(a$,g,1)):d=d+1:NEXT:d=d+2:NEXT:RETURN
2000 ' Title
2010 MODE 0:PEN 1:LOCATE 9,11:PRINT"Keys:":LOCATE 6,13:PEN 2:PRINT"A.....UP"
2020 LOCATE 6,15:PRINT"Z.....DOWN":LOCATE 6,17:PRINT"M.....RIGHT"
2030 LOCATE 6,19:PRINT"N.....LEFT":LOCATE 6,22:PRINT"OR JOYSTICK"
2040 PEN 7:LOCATE 4,3:PRINT"Hungry Snappers":LOCATE 6,5:PRINT"BY D.L.LAU"
2050 LOCATE 5,25:PRINT"Press    Space"
2060 IF INKEY(47)<>0 THEN 2060
2070 WHILE INKEY$<>"":WEND
2080 MODE 1:PEN 1:LOCATE 9,11:PRINT"Select game speed (1-5)"
2090 LOCATE 12,14:PRINT"Fastest to slowest"
2100 LOCATE 19,16:INPUT dy:IF dy<1 OR dy>5 THEN 2080
2110 dy=(dy-1)*22:CLS:LOCATE 5,11:PRINT"Select the insects' I.Q.s (1-5)"
2120 LOCATE 11,14:PRINT"Intelligent to thick"
2130 LOCATE 19,16:PEN 1:INPUT iq:IF iq<1 OR iq>5 THEN 2110
2140 iq=iq*20-18:GOTO 180
2150 'Screen Completion
2160 sn=sn+1:IF sn=6 THEN 2220
2170 li=li+3:GOTO 190
2180 LOCATE 17,2:PRINT li:PEN 14:LOCATE 6,12
2190 PRINT"Game Over":FOR f=1 TO 5000:NEXT
2200 IF sc>h THEN h=sc
2210 GOTO 2000
2220 'Game Completion
2230 MODE 1:PEN 1:LOCATE 15,10:PRINT"* EXCELLENT *"
2240 PEN 2:LOCATE 4,15:PRINT"You have completed the whole game!"
2250 FOR f=1 TO 200 STEP 10:SOUND 1,(200-f)*4,25,INT((200-f)/15),3,3:SOUND 1,(200-f)*2,15,INT((200-f)/15),3,4
2260 NEXT
2270 FOR f=0 TO 256:INK 0,INT(RND*27):BORDER INT(RND*27):NEXT:FOR i=1 TO 5000:NEXT:INK 0,0:LOCATE 17,17:GOTO 2190
2280 ' M/C
2290 RESTORE 2420:MODE 2:PEN 1:PRINT"Poking Machine Code, Please Wait ..."
2300 ln=2420:a1=&9400:a2=&957F:GOSUB 2340
2310 a1=&A000:a2=&A55B:GOSUB 2340
2320 POKE &160,255:RESTORE:RETURN
2330 'Loader
2340 FOR adr=a1 TO a2 STEP 13
2350 READ byte$:chk=0
2360 FOR i=0 TO 12
2370 v=VAL("&"+MID$(byte$,i*2+1,2))
2380 POKE adr+i,v:chk=chk+v
2390 NEXT
2400 IF chk<>VAL("&"+RIGHT$(byte$,3)) THEN PRINT"Error in line";ln:END
2410 ln=ln+10:NEXT:RETURN
2420 DATA 54a8545ca8fcbca85486fca8fc82e
2430 DATA fcd600fc2c7c8204fcacfcbca8804
2440 DATA fcc35400fca84303038303438354c
2450 DATA 4383c3e10352d283a143c3c3c3741
2460 DATA 4352d20383c30303038303c300402
2470 DATA fcfc00543333a8b951a276b9a66db
2480 DATA 5976b9a65976b951a2765433335d9
2490 DATA a800fcfc0080458a40400f0f8050d
2500 DATA 05a9c80a8f9d6e4f8f9d6e4f05557
2510 DATA c4c80a400f0f8080458a400000403
2520 DATA 0000be007f0044cc8800c9c3984f9
2530 DATA 00c9c9ec88c9c3980044cc88006c2
2540 DATA bf007f0000440000aa6420aa6e3c8
2550 DATA dccc2a44c3c60044c6c60044c6679
2560 DATA c6006ec3c62aaacc88aa00000058f
2570 DATA 00552a15aa00cccc0010c9c3884fa
2580 DATA cce9c98810c9c38800cccc0055717
2590 DATA 2a15aaaacc88aa6ec3c32a44c66b9
2600 DATA c60044c6c60044c3c6006edccc679
2610 DATA 2aaa6420aa0044000015aa552a384
2620 DATA 0080400000cdcd00eacdcdd52a5dd
2630 DATA 8e4d15008e4d0040cfcf80bf4552d
2640 DATA 8a7faa15aa006a00801545cfce553
2650 DATA d5cf0ccf00cf0ccf00a9cfced5744
2660 DATA 6a008015aa15aa007f458abf404b5
2670 DATA cfcf80008e4d00aa8e4d556acd60a
2680 DATA ce9500cdce0000804000552a15452
2690 DATA aa0015aa152a4000d5eacdcf8a5cd
2700 DATA 00cf0ccf00cf0ccfeacdcf8a2a68e
2710 DATA 4000d50015aa152c3137302c30309
2720 DATA 3e003207923e153206923e043229a
2730 DATA 01923e013202922a06921100902fb
2740 DATA 197efe00ca33a0fe01ca5ba0fe6f4
2750 DATA 02ca61a0fe03ca67a0c36da02a699
2760 DATA 0692232206923a02923c320292345
2770 DATA fe13c214a02a06922323220692449
2780 DATA 3a01923c320192fe18c8c30fa051e
2790 DATA 110094c370a0114094c370a011541
2800 DATA 2094c370a01160943a0292673a4fb
2810 DATA 01926fcd1abc06040e08c5e51a489
2820 DATA 77231310fae101000809c10d20398
2830 DATA efc333a0dd7e006fdd7e016722634
2840 DATA 0692c91100003a50924f3a17923c0
2850 DATA 814f210093197eb9cabca0137b588
2860 DATA fe05c2aba0c93a51924f3a1892629
2870 DATA 814f210693197eb9ca44a13a50513
2880 DATA 924f3a1792814fc3b4a03e003251b
2890 DATA 17923eff321892cd9fa03a10925aa
2900 DATA fe03c8a72a0692111400ed527e514
2910 DATA fe01c8fe02ca2ea1fe03ca39a1705
2920 DATA fe04ca44a13e0032109222069247d
2930 DATA 3a51926f3d2c3251923a50926748d
2940 DATA 24cd75bb3e20cd5dbb11a094cd676
2950 DATA 7da2c93e00773e02321092c30e482
2960 DATA a13e00773e01321092c30ea13e419
2970 DATA 03321092c93e013217923e003232a
2980 DATA 1892cd9fa03a1092fe03c82a0658b
2990 DATA 92237efe01c8fe02ca98a1fe036fe
3000 DATA caa3a1fe04ca44a13e003210925d1
3010 DATA 2206923a51923c6f3a50923c3240c
3020 DATA 509267cd75bb3e20cd5dbb118061a
3030 DATA 94cd7da2c93e00773e02321092512
3040 DATA c379a13e00773e01321092c3794e1
3050 DATA a13e003217923e01321892cd9f441
3060 DATA a03a1092fe03c82a069211140042c
3070 DATA a7ed5a7efe01c8fe02ca02a2fe79f
3080 DATA 03ca0da2fe04ca44a13e0032104ad
3090 DATA 922206923a51923c6f6f325192498
3100 DATA 3a50926724cd75bb3e20cd5dbb5e7
3110 DATA 11e094cd7da2c93e00773e0232561
3120 DATA 1092c3e2a13e00773e013210924b0
3130 DATA c3e2a13eff3217923e00321892578
3140 DATA cd9fa03a1092fe03c82a06922b59e
3150 DATA 7efe01c8fe02ca67a2fe03ca72755
3160 DATA a2fe04ca44a13e00321092220648d
3170 DATA 923a51926f2c3a509267243d32460
3180 DATA 5092cd75bb3e20cd5dbb11c094687
3190 DATA cd7da2c93e00773e02321092c3541
3200 DATA 47a23e00773e01321092c347a245d
3210 DATA 3a5092673a51926fcd1abc06044bc
3220 DATA 0e08c5e51a77231310fae10100473
3230 DATA 0809c10dc28ca2c9ed5b1492215a7
3240 DATA a193197efe01cabaa2fe02ca9c756
3250 DATA a3fe03caada4c304a53a51924768f
3260 DATA 210693197e3db8c2d5a23a509259b
3270 DATA 47210093197eb8ca44a121ecff605
3280 DATA 221792cde1a2c366a33a1292fe6c3
3290 DATA 01c21fa33a509247210093197e433
3300 DATA b8ca1fa3da10a3cd8da42b7efe776
3310 DATA 00c21fa33e04ed5b149221a193509
3320 DATA 1977e1c9cd8da4237efe00c21f6b8
3330 DATA a33e02c305a3ed5b1492cd8da463a
3340 DATA ed5b1792197efe00c8210093ed5ef
3350 DATA 5b1492193a5092477eb8da57a3587
3360 DATA cd8da42b7efe00ca03a33a17925f8
3370 DATA fe14cafca33e03c305a3cd8da4725
3380 DATA 237efe00c24aa33e02c305a3ed5e6
3390 DATA 5b1492cd8da4111400ed52cd9b5cb
3400 DATA a4ed5b1492210693197e470435463
3410 DATA 210093197e672468e5cd75bb3e55e
3420 DATA 20cd5dbbe1252d2d110095c385553
3430 DATA a23a519247210693197eb8c2b7588
3440 DATA a33a509247210093197e3cb8ca50f
3450 DATA 44a1210100221792cdc3a3c35d525
3460 DATA a43a1292fe01c201a43a51924754c
3470 DATA 210693197eb8ca01a4d2eda3cd6a7
3480 DATA 8da4111400197efe00c201a43e490
3490 DATA 03c305a3cd8da4111400a7ed52577
3500 DATA 7efe00c201a43e01c305a3ed5b5d5
3510 DATA 1492cd8da4ed5b1792197efe0062a
3520 DATA c8210693ed5b1492193a5192474ed
3530 DATA 7eb8da43a4cd8da4111400a7ed6ae
3540 DATA 527efe00ca3ea43a1792fe01ca626
3550 DATA 03a33e02c305a33e01c305a3cd4c8
3560 DATA 8da4111400197efe00ca4aa33a4dc
3570 DATA 1792fe01c21aa33e04c305a3ed5c1
3580 DATA 5b1492cd8da423cd9ba4ed5b1468a
3590 DATA 92210093197e4704342106931932f
3600 DATA 7e6f2c60e5cd75bb3e20cd5dbb69e
3610 DATA e12d112095c385a221a5937b87619
3620 DATA 3c5f194e23466069c94d4421a5454
3630 DATA 93ed5b14927b873c5f1971237053b
3640 DATA c93a519247210693197e3cb8c2534
3650 DATA c8a43a509247210093197eb8ca59c
3660 DATA 44a1211400221792cde1a2ed5b57d
3670 DATA 1492cd8da411140019cd9ba4ed5db
3680 DATA 5b1492210693197e47043421002f2
3690 DATA 93197e672468e5cd75bb3e20cd62a
3700 DATA 5dbbe125114095c385a23a519260b
3710 DATA 47210693197eb8c21fa53a50924f2
3720 DATA 47210093197e3db8ca44a121ff556
3730 DATA ff221792cdc3a3ed5b1492cd8d745
3740 DATA a42bcd9ba4ed5b149221009319596
3750 DATA 7e470435210693197e6f2c60e542f
3760 DATA cd75bb3e20cd5dbbe12d2525115a9
3770 DATA 6095c385a200000000000000002df
