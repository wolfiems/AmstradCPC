10 ' Goonies Cheat By Jason Brooks
20 MEMORY &3000:LOAD"!
30 POKE &39E2,&C3:POKE &39E3,&1F
40 POKE &39E4,&BE:i=&BE00
50 READ a$:IF a$="goonies" THEN CALL &BE14
60 POKE i,VAL("&"+a$):i=i+1:GOTO 50
80 DATA F3,DD,21,00,BF,11,4F
90 DATA 00,CD,67,BB,21,2C,BE
100 DATA 22,4D,BF,C3,00,BF,21
110 DATA 40,00,E5,21,00,BB,E5
120 DATA C3,B7,39,3E,45,32,4B
130 DATA 00,3E,99,32,4E,00,F3
140 DATA F1,C9
150 DATA 3E,01,32,3E,46:'Start Room
160 'alter 01 for start room between 01-08
170 DATA 3E,FF,32,5F,46:'255 lives
180 DATA C3,00,46,goonies:'leave this line
