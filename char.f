      PROGRAM CHAR1
        IMPLICIT NONE
        CHARACTER*10 MYC
        MYC = 'STRINGA'
        PRINT *, MYC(1:1),MYC(3:3)
        PRINT *,'lenght of MYC = ',LEN(MYC)
        STOP
      END
