1 JMS F
5 PCLEAR 4
10 CLEAR 200,&H3FF0
15 DIM A(255):A=0
16 READ A(A):IF A(A)<>0 THEN A=A+1:GOTO 16
20 INPUT"LEVEL";A$
30 LOADM"OBJECT "+A$
35 INPUT "INSERT CRYSTAL DISK, AND HIT    ENTER";Q$
39 Q=&H6001
40 FOR X=&H4000 TO &H6000 STEP 4
50 IF PEEK(X)=255 THEN POKE Q,255:POKE Q+1,255:POKE &H6000,(Q-&H6000)/256:PRINT"$";HEX$(PEEK(&H6000)+1);" SECOTRS":SAVEM "OBJECT "+A$,&H6000,Q,0:POKE 113,0:DLOAD
60 A=PEEK(X)*256+PEEK(X+1):A=INT(A/2)+14:B=INT(A/256):C=A-B*256
70 POKE Q,B:POKE Q+1,C:A=PEEK(X+3):POKE Q+2,A(A)
90 IF A(A)=0 THEN PRINT"ERROR":STOP
1000 A=PEEK(X+2):POKE Q+3,A:Q=Q+4
1010 NEXT X
1020 PRINT"NOT ENOUGH MEMORY":STOP
2000 DATA 2,4,10,8,12,14,16,18,20,22,24,26,28,30,0
