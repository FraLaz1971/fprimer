      PROGRAM LOGI
        LOGICAL L1, L2
        INTEGER VAL1,A1,A2,A3
        REAL R1,R2
        L1=.TRUE.
        L2=.FALSE.
        IF (L1.EQV.L2)  PRINT *,'EQUAL'
        IF (L1.NEQV.L2) PRINT *,'DIFFERENT'
        VAL1 = -10
        GOTO 30
10      VAL1 = 0
        GOTO 30
20      VAL1 = 10
30        IF (VAL1)100,110,120
100     PRINT *, 'This is the negative branch'
        GOTO 10
110     PRINT *, 'This is the zero branch'
        GOTO 20
120     PRINT *, 'This is the positive branch'
        A1=5
        A2=2
        A3=10
        PRINT *,A1/A2
        R1=5.0
        R2=2.0
        PRINT *,R1/R2
        PRINT *, 'A3*(A1/A2) = ',A3*(A1/A2)
        PRINT *, 'A3*A1/A2 = ',A3*A1/A2
        STOP
      END
