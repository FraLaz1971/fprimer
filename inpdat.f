	program inpdat
c
c This program reads n points from a data file and stores them in
c 3 arrays x(), y(), z().
c
		integer nmax, u
		real sumx, sumy, sumz
		parameter (nmax=1000, u=20)
		real x(nmax), y(nmax), z(nmax)
		data sumx,sumy,sumz /0,0,0/
c Open the data file
		open (u, FILE='randpoints.csv', STATUS='OLD',ERR=999)
c Read the number of points
		read(u,*) n
		if (n.GT.nmax) then
		write(*,*) 'Error: n = ', n, 
     &		'is larger than nmax =', nmax
		goto 9999
		endif
c loop over the data points
		do 10 i= 1, n
			read(u,100) x(i), y(i), z(i)
			write(*,*) x(i), y(i), z(i)
10 		continue

100 		format (3(f10.4))
c Close the file
		close (u)
c calculate average of x,y,z data points
		do 20 i= 1, n
			sumx = x(i)+sumx
			sumy = y(i)+sumy
			sumz = z(i)+sumz
20 		continue
		write(*,*) 'read points: ',n
		write(*,*) 'avg x=',sumx/n
		write(*,*) 'avg y=',sumy/n
		write(*,*) 'avg z=',sumz/n
		goto 10000		
999 	write (*,*) 'Error in reading the input file randpoints.csv'
        write (*,*) 'is the file present/accessible?'
9999 		write (*,*) 'Program terminated. Bye.'
10000	end

