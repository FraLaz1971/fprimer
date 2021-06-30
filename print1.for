c prints  to a file
       PROGRAM PPRINT
       OPEN(UNIT=6, file='OUT.TXT')
       WRITE (6,*) 'HELLO PRINTER'
       CLOSE(UNIT=6)
       END
