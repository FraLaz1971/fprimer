	program sum1
		integer i, n, s, sum
		sum = 0
		write(*,*) 'please enter n. of iterations (1-99)'
		read(*,*) n
		write(*,*) 'please enter step value (1-99)'
		read(*,*) s
		do 10 i = 1, n, s
			sum = sum + i
			write(*,100) 'i =', i, ' sum =', sum
10 		continue
100		 format (A3,I2,A6,I4)
	end
