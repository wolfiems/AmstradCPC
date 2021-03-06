 10 '         CPC FRACTALS
20 '      by Chris Ratcliffe
30 ' (c) Computing with the Amstrad
40 '---------------------------------
50 MODE 2:i(0)=0:i(1)=10:i(2)=14:i(3)=26
60 GOSUB 1320:GOSUB 1340:mx=99
70 FOR t=1 TO mx:POKE 33999+t,(t MOD 3)+1:NEXT
80 x1=-2.3:x2=1.1:y1=-1.19:y2=1.19
90 ' Set up screen
100 MODE 1:PRINT CHR$(23);CHR$(0)
110 WINDOW#0,1,40,24,25
120 WINDOW#1,1,40,1,22
130 WINDOW#2,1,40,25,25
140 WINDOW#3,1,40,23,23
150 PAPER#3,1:PAPER#2,1
160 CLS#3:PAPER 1
170 ' Main menu loop
180 GOSUB 1120
190 IF INKEY$<>"" THEN 190
200 LOCATE 1,2
210 PRINT" S=SAVE  L=LOAD  Z=ZOOM";
220 PRINT"   R=RUN  123=INK"
230 a$=UPPER$(INKEY$)
240 IF a$<>"S" THEN 350
250 ' Save screen
260 FOR t=0 TO 4:POKE &C7D0+t,i(t)
270 POKE &C7D8+t,PEEK(x1+t)
280 POKE &C7E0+t,PEEK(x2+t)
290 POKE &C7E8+t,PEEK(y1+t)
300 POKE &C7F0+t,PEEK(y2+t):NEXT
310 CLS#2:LOCATE 9,2
320 INPUT"Filename ",a$:CLS#2
330 SAVE a$,b,&C000,&3F80
340 GOTO 190
350 IF a$<>"R" THEN 490
360 ' Run a pattern
370 CLS#2:LOCATE 6,2:INPUT"X1 ";x1
380 IF ABS(x1)>3 THEN 370
390 CLS#2:LOCATE 6,2:INPUT"X2 ";x2
400 IF ABS(x2)>3 THEN 390
410 IF x2<x1 THEN 370
420 CLS#2:LOCATE 6,2:INPUT"Y1 ";y1
430 IF ABS(y1)>2 THEN 420
440 y2=y1+(x2-x1)*0.7:GOSUB 1120
450 GOSUB 1180
460 CLS#1:CLS#2:LOCATE 11,2
470 PRINT"Drawing in progress"
480 CALL 32768,mx:GOTO 200
490 IF a$<>"L" THEN 610
500 ' Load pattern
510 CLS#2:LOCATE 7,2
520 INPUT"Filename: ",a$:LOAD a$
530 FOR t=0 TO 4:i(t)=PEEK(&C7D0+t)
540 POKE x1+t,PEEK(&C7D8+t)
550 POKE x2+t,PEEK(&C7E0+t)
560 POKE y1+t,PEEK(&C7E8+t)
570 POKE y2+t,PEEK(&C7F0+t)
580 NEXT
590 GOSUB 1320:GOTO 180
600 ' Change inks
610 va=VAL(a$)
620 IF va<1 OR va>3 THEN 650
630 i(va)=(i(va) MOD 26)+1
640 GOSUB 1320
650 IF a$<>"Z" THEN 230
660 ' zoom routine
670 CLS#2:LOCATE 9,2 
680 PRINT"Select bottom left edge";
690 x=0:y=y4:PRINT CHR$(23);CHR$(1)
700 p=x:q=y
710 MOVE x,48:DRAWR 0,350,3
720 MOVE 0,y:DRAWR 638,0
730 IF INKEY(18)=0 THEN 820
740 IF INKEY(8)=0 AND x>0 THEN p=x-2
750 IF INKEY(1)=0 AND x<630 THEN p=x+2
760 IF INKEY(0)=0 AND y<390 THEN q=y+2
770 IF INKEY(2)=0 AND y>48 THEN q=y-2
780 IF p=x AND q=y THEN 730
790 MOVE x,48:DRAWR 0,350
800 MOVE 0,y:DRAWR 638,0
810 x=p:y=q:GOTO 710
820 IF INKEY(18) THEN 820
830 CLS#2:LOCATE 10,2
840 PRINT"Select top right edge"
850 x=p+4
860 MOVE x,48:DRAWR 0,350
870 MOVE 0,y:DRAWR 638,0
880 IF INKEY(18)=0 THEN 960
890 IF INKEY(2) AND INKEY (8) THEN 910
900 IF x-4>p THEN a=x-2:GOTO 930
910 IF INKEY(0) AND INKEY(1) THEN 880
920 IF x<638 AND y<398 THEN a=x+2
930 MOVE x,48:DRAWR 0,350
940 MOVE 0,y:DRAWR 638,0
950 x=a:y=q+(x-p)*0.55:GOTO 860
960 CLS#2:LOCATE 13,2
970 PRINT"Is this OK? (y/n)"
980 IF INKEY$<>"" THEN 990
990 i$=UPPER$(INKEY$)
1000 IF i$="Y" THEN 1060
1010 IF i$<>"N" THEN 990
1020 MOVE x,48:DRAWR 0,350
1030 MOVE 0,y:DRAWR 638,0
1040 MOVE p,48:DRAWR 0,350
1050 MOVE 0,q:DRAWR 638,0:GOTO 190
1060 s=(x2-x1)/638:x2=x1+x*s
1070 x1=x1+p*s:s=(y2-y1)/352
1080 y2=y1+(y-48)*s:y1=y1+(q-48)*s
1090 PRINT CHR$(23);CHR$(0)
1100 GOSUB 1110:GOTO 450
1110 ' Print co-ordinates
1120 CLS:PEN 0:PRINT" X ";:PEN 3
1130 PRINT USING"+#.####  ";x1;x2;
1140 PEN 0:PRINT"Y ";:PEN 3
1150 PRINT USING"+#.####  ";y1;y2;
1160 RETURN
1170 ' Set up tables
1180 CLS#2:LOCATE 12,2:s=(x2-x1)/319
1190 PRINT"Setting up tables"
1200 FOR x=0 TO 319:p=x*5+35000
1210 v=x1+s*x:GOSUB 1250:NEXT
1220 s=(y2-y1)/176
1230 FOR y=0 TO 176:p=y*5+37000
1240 v=y1+s*y:GOSUB 1250:NEXT:RETURN
1250 IF v<0 THEN q=255 ELSE q=0
1260 POKE p+4,q:e=ABS(v):POKE p,INT(e)
1270 e=(e-INT(e))*256:POKE p+1,INT(e)
1280 e=(e-INT(e))*256:POKE p+2,INT(e)
1290 e=(e-INT(e))*256:POKE p+3,INT(e)
1300 RETURN
1310 'Set inks
1320  BORDER i(1):INK 0,i(0):INK 1,i(1)
1330 INK 2,i(2):INK 3,i(3):RETURN
1340 ' Machine code
1350 LOCATE 27,12:PRINT"Initialising, please wait ..."
1360 MEMORY &7FFF:ln=1490:GOTO 1390
1370 c(m)=ASC(MID$(a$,k+m,3))-59:RETURN
1380 PRINT"Error in Line";ln:END
1390 FOR a=&8000 TO &832B STEP 18:READ a$
1400 ch=0:FOR i=0 TO 8:j=i*2:k=i*3
1410 FOR m=1 TO 3:GOSUB 1370:ch=ch+c(m)
1420 NEXT:p=a+j
1430 IF c(1)>15 OR c(2)>63 OR c(3)>63 THEN 1380
1440 POKE p+1,c(1)*16+((c(2) AND 60)/4)
1450 POKE p,c(3)+((c(2) AND 3)*64):NEXT
1460 k=27:m=1:GOSUB 1370:m=2:GOSUB 1370
1470 IF ch<>c(1)*64+c(2) THEN 1380
1480 ln=ln+10:NEXT:RETURN
1490 DATA BvX>C;CI]JvH>u=>CSCI[C[\=EKBq
1500 DATA CIWE;uAy>;;a=CdCI_Dke<A>CGnC?
1510 DATA E>hE>hE>hE>hE>hDk]Ey>Dsm>E>DF
1520 DATA CIZF[\=ECCIUDse=a>ES]=e>CIUBy
1530 DATA =sLIq>Iq[Iq[Iq[Iq[=E[CIU@jhFZ
1540 DATA CIaEKe>u>Go>FjY@jhCIaEKeGq>E<
1550 DATA FjeFvH>e;CI]>dBCH=>usGc;C=FC_
1560 DATA ?CuHq>H;\>E?C=EBvXGo;FjY@jhCr
1570 DATA CIaEKeGq>Fje?Cy<vHG=vDse=I>E>
1580 DATA Ds]Bm>;By>v=Bq;?>y>v=>e;CI[DD
1590 DATA >CwCI[G^y<N=Ga;;bHGq>C>O>f;Bs
1600 DATA CI]>dBCH=G]s>CwCH=IoS>[e=E>Bw
1610 DATA CH>?[]=e>CGu?O]=E>CHE?VH=e=AX
1620 DATA CHiBw]=e>CHkC?]=e>CHmCG]Ey>D<
1630 DATA CWm>E>CIK>oe=E>CH>?[]=e>CGzBW
1640 DATA ?O]=E>CHE?VH=e=CHiC[]=e>CHkB>
1650 DATA Cc]=e>CHmCk]Gq>CC;D?uIU>G>wCo
1660 DATA >CjCIK;>H=e=CILBw]=e>CINC?]Ak 
1670 DATA =e>CIPCG]>e>CITCWm=e>CGiC[]C;
1680 DATA =e>CGkCc]=A>;;;Ck]=E>CII>CuA]
1690 DATA >E>CIK;>H>e=CH<?Wm=e>CGs?[]AY
1700 DATA =e>CGu?c]>e>CGw?km=e>CIL>[]DG
1710 DATA =e>CIN>c]>e>CIT>kmGq>CDA?jhC`
1720 DATA CHB?kuEa>CWm>e>CHn>EJCI?BCuCE
1730 DATA Cy>CGm>e>CHl>EJCI=B;uCy>C?mC<
1740 DATA >e>CHj>EJCI;AsuCy>Bwm=e>CGnDM
1750 DATA C[]=e>CGpCc]=A>;;;Ck]>e>CGrBo
1760 DATA D;mGq>CC;D?e=E>CGxDGe=E>CGzBC
1770 DATA D_u>E>CH<GajD;u?y>;OACWu>E>By
1780 DATA CIT=BXCI>>ut>Y;=;zHoI;aIBZXCG
1790 DATA HoMHof;<yJGKHrD;aYBZXHoMHofEw
1800 DATA ;<yJGK=BKCIL;OA=xy=HrJcKD_uCp
1810 DATA =y>D_mGa>?guHq>@;\;A>;;;?CeBg
1820 DATA @y>HjH;a=BRXHo<;<o?cuHq>@W\DR
1830 DATA Gq>CEb?_uHq>@s\Gq>CEb?[uHq>Ea
1840 DATA AO\Gq>CEb;Cy;OA=BXCHM=jX;;QBE 
1850 DATA CVX>;;<K<CVX>;C<K<CVX>;K<K<?R
1860 DATA CVX>;S<K<BZXBc[HsK=fDCH@GpZC? 
1870 DATA CFVBRX?k??Ke@y>HjH;a=BRX?k>CC
1880 DATA ?Ge@y>HjHIq=HpE;Dp=dGCH=GpZDB
1890 DATA CFV?fhBRXHo<;<o=vD@O;>;d<_<Bh
1900 DATA >;d<_<>;d<_<>;d<_<>;d<_<>;d@o
1910 DATA <_<>;d<_<H;dG_T=?A?o\Ey>=HrBh
1920 DATA JkKEzD?Cm=A>CGi>[LIq>Iq[Iq[Dj
1930 DATA Iq[Iq[=A[CGn>oLIq>Iq[Iq[Iq[Fm
1940 DATA Iq[Ga[;;;;;;;;;;;;;;;;;;;;;=q
