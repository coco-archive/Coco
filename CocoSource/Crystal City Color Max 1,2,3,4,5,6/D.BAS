10 LOADM"L
20 INPUT"NAME";N$
30 POKE &HE6C6,&H21:HSCREEN 2
40 EXEC:R:L:N$
50 POKE &HFF9A,0
60 POKE &HFF99,32+16+8+4+2
70 GOTO 70
