cccccccccccccccccccccccccccccccccc
c| sum1.f : compute the sum
c| of a succession with step s of 
c| n increasing integers, took
c| in input from the user
cccccccccccccccccccccccccccccccccc
c	contains
c all called subroutines here	
	subroutine report(n,s,sum)
        integer n, s, sum
        write(*,*) 'n of iterations = ', n
        write(*,*) 'step = ', s
        write(*,*) 'Final sum = ', sum
	end 
	
	subroutine freport(n,s,sum)
        integer  n, s, sum
        open(10, FILE='results.txt', ERR=899)
            write(10,*) 'n of iterations = ', n
            write(10,*) 'step = ', s
            write(10,*) 'Final sum = ', sum
        close(10)
        goto 999
899      write(*,*) 'ERROR IN WRITING FILE'
999	end

	
c ACCESS='SEQUENTIAL',

	program sum1
		integer i, n, s, mysum, debug
		mysum = 0
		debug = 0
c read number of iteration from stdin
10		write(*,*) 'please enter n. of iterations (1-99)'
		read(*,*) n
		if ((n.ge.100) .or. (n.lt.1)) then
            write(*,*) 'only integers in the interval (1-99)'
            write(*,*) 'are allowed'
            goto 10
		end if
20		write(*,*) 'please enter step value (1-99)'
		read(*,*) s
c read step value from stdin		
		if ( (s.ge.100) .or. (s.lt.1) ) then
            write(*,*) 'only integers in the interval (1-99)'
            write(*,*) 'are allowed'
            goto 20
		end if
		if (s.ge.n)  then
            write(*,*) 'the step must be greater of '
            write(*,*) 'number of iterations'
            goto 20
		end if

		do 50 i = 1, n, s
			mysum = mysum + i
			if (debug.gt.0) then 
                write(*,100) 'i =', i, ' sum =', mysum	
			end if		
50 		continue
c         write(*,300) 'n of iterations = ', n
c         write(*,300) 'step = ', s
c         write(*,200) 'Final sum = ', mysum
          call report(n,s,mysum)          
c          call freport(n,s,mysum)           
c define line of output format
100		 format (A3,I2,A6,I4)
200      format (A12,I4)
300      format (A,I2)
	end

