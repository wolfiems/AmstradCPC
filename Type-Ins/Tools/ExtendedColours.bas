5 CLS
10 MEMORY &9FFF:a=&A000:l=80:FOR e=0 TO 70
20 FOR b=0 TO 7
30 READ n:POKE (a+b),n:c=c+n
40 NEXT b:READ d:IF c=d THEN PRINT" LINE";l;"ok":GOTO 60
50 PRINT CHR$(7):PRINT:PRINT:PRINT" Error in line";l:PRINT:PRINT:END
60 a=a+8:l=l+10:c=0::NEXT e
70 CALL &A000:MODE 1:PRINT"Commands installed"
80 DATA 1,10,160,33,47,162,205,209,827
90 DATA 188,201,27,160,195,83,160,195,1209
100 DATA 126,160,195,70,160,195,50,160,1116
110 DATA 195,168,160,77,79,68,197,73,1017
120 DATA 78,203,79,70,198,79,206,66,979
130 DATA 79,82,68,69,210,0,0,0,508
140 DATA 0,0,58,250,161,167,192,61,889
150 DATA 50,250,161,33,251,161,6,129,1041
160 DATA 17,194,160,195,215,188,33,251,1253
170 DATA 161,175,50,250,161,205,221,188,1411
180 DATA 195,2,188,254,1,192,205,70,1107
190 DATA 160,221,126,0,205,14,188,205,1119
200 DATA 50,160,17,4,4,237,83,19,574
210 DATA 162,237,83,21,162,17,10,10,702
220 DATA 237,83,23,162,237,83,25,162,1012
230 DATA 62,1,205,144,187,201,254,5,1059
240 DATA 192,221,126,8,33,19,162,254,1015
250 DATA 0,40,9,221,70,8,17,4,369
260 DATA 0,25,16,253,221,126,6,119,766
270 DATA 35,221,126,4,119,35,221,126,887
280 DATA 2,119,35,221,126,0,119,201,823
290 DATA 254,4,192,33,14,162,221,126,1006
300 DATA 6,119,35,221,126,4,119,35,665
310 DATA 221,126,2,119,35,221,126,0,850
320 DATA 119,201,243,221,229,229,245,217,1704
330 DATA 197,221,33,14,162,14,0,203,844
340 DATA 225,237,73,221,78,0,203,241,1278
350 DATA 237,73,237,73,221,33,19,162,1055
360 DATA 175,79,237,73,221,78,0,203,1066
370 DATA 241,237,73,221,35,221,35,221,1284
380 DATA 35,221,35,60,254,6,32,233,876
390 DATA 193,217,62,2,50,13,162,33,732
400 DATA 4,162,6,129,17,15,161,205,699
410 DATA 224,188,241,225,221,225,201,243,1768
420 DATA 229,221,229,245,33,13,162,53,1185
430 DATA 40,6,241,221,225,225,251,201,1410
440 DATA 217,197,221,33,15,162,14,0,859
450 DATA 203,225,237,73,221,78,0,203,1240
460 DATA 241,237,73,237,73,221,33,19,1134
470 DATA 162,175,79,237,73,221,78,1,1026
480 DATA 203,241,237,73,221,35,221,35,1266
490 DATA 221,35,221,35,60,254,6,32,864
500 DATA 233,193,217,33,4,162,205,230,1277
510 DATA 188,33,4,162,6,129,17,105,644
520 DATA 161,205,224,188,241,221,225,225,1690
530 DATA 201,243,221,229,229,245,217,197,1782
540 DATA 221,33,16,162,14,0,203,225,874
550 DATA 237,73,221,78,0,203,241,237,1290
560 DATA 73,237,73,221,33,19,162,175,993
570 DATA 79,237,73,221,78,2,203,241,1134
580 DATA 237,73,221,35,221,35,221,35,1078
590 DATA 221,35,60,254,6,32,233,193,1034
600 DATA 217,33,4,162,205,230,188,33,1072
610 DATA 4,162,6,129,17,183,161,205,867
620 DATA 224,188,241,225,221,225,201,243,1768
630 DATA 229,221,229,245,217,197,221,33,1592
640 DATA 17,162,14,0,203,225,237,73,931
650 DATA 221,78,0,203,241,237,73,237,1290
660 DATA 73,221,33,19,162,175,79,237,999
670 DATA 73,221,78,3,203,241,237,73,1129
680 DATA 221,35,221,35,221,35,221,35,1024
690 DATA 60,254,6,32,233,193,217,33,1028
700 DATA 4,162,205,230,188,241,221,225,1476
710 DATA 225,201,0,0,0,0,0,0,426
720 DATA 129,194,160,255,0,0,241,0,979
730 DATA 0,129,183,161,82,0,11,12,578
740 DATA 13,14,0,4,4,4,4,10,53
750 DATA 10,10,10,0,0,0,0,0,30
760 DATA 0,0,0,0,0,0,0,0,0
770 DATA 0,0,0,0,0,0,0,252,252
780 DATA 166,10,160,255,255,255,255,255,1611