10 ' THE PLOT CHEAT By J.Brooks
20 ' Infinite Health
30 MEMORY &2000:MODE 0
40 BORDER 26:WINDOW #0,3,18,4,6
50 DATA 26,0,13,12,20,25,9
60 DATA 10,1,2,4,7,16,15,3,6
70 FOR i=0 TO 15:READ a:INK i,a:NEXT
80 LOAD"!plot.bin",&3FC9:CALL &3FC9
90 LOAD"!inter1.bin",&2B80
100 LOAD"!inter.bin",&C000:POKE &DC62,0
110 CALL &EB78