	program inpdat
c
c This program reads n points from a data file and stores them in
c 3 arrays x, y, z.
c
		integer nmax, u
		real sumx, sumy, sumz
		parameter (nmax=1000, u=20)
		real x(nmax), y(nmax), z(nmax)
c Open the data file
		open (u, FILE='randpoints.csv', STATUS='OLD')
c Read the number of points
		read(u,*) n
		if (n.GT.nmax) then
		write(*,*) 'Error: n = ', n, 'is larger than nmax =', nmax
		goto 9999
		endif
c loop over the data points
		do 10 i= 1, n
			read(u,100) x(i), y(i), z(i)
c			write(*,*) x(i), y(i), z(i)
10 		enddo
100 		format (3(F10.6))
c Close the file
		close (u)
c calculate average of x,y,z data points
		do 20 i= 1, n
			sumx = x(i)+sumx
			sumy = y(i)+sumy
			sumz = z(i)+sumz
20 		enddo
		write(*,*) 'read points: ',n
		write(*,'(A,F10.6)') 'avg x=',sumx/n
		write(*,'(A,F10.6)') 'avg y=',sumy/n
		write(*,'(A,F10.6)') 'avg z=',sumz/n
9999 		write (*,*) 'Program terminated. Bye.'
	end

