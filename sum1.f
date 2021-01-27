cccccccccccccccccccccccccccccccccc
c| sum1.f : compute the sum
c| of a succession with step s of 
c| n increasing integers, took
c| in input from the user
cccccccccccccccccccccccccccccccccc
    program sum1
		integer i, n, s, sum, debug
		sum = 0
		debug = 0
c read number of iteration from stdin
10		write(*,*) 'please enter n. of iterations (1-99)'
		read(*,*) n
		if ((n.ge.100) .or. (n.lt.1)) then
            write(*,*) 'only integers in the interval (1-99)'
            write(*,*) 'are allowed'
            goto 10
		end if
		write(*,*) 'please enter step value (1-99)'
		read(*,*) s
c read step value from stdin		
20		if ( (s.ge.100) .or. (s.lt.1) ) then
            write(*,*) 'only integers in the interval (1-99)'
            write(*,*) 'are allowed'
            goto 20
		end if

		do 50 i = 1, n, s
			sum = sum + i
			if (debug.gt.0) then 
                write(*,100) 'i =', i, ' sum =', sum	
			end if		
50 		continue
        write(*,300) 'n of iterations = ', n
        write(*,300) 'step = ', s
        write(*,200) 'Final sum = ', sum
c define line of output format
100		 format (A3,I2,A6,I4)
200      format (A12,I4)
300      format (A,I2)
	end program
