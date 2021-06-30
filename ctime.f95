	program test_ctime
		integer(8) :: i
		character(len=30) :: date
		i = time8()
	! Do something, main part of the program
		call ctime(i,date)
		print *, 'Program was started on ', date
                do i = 1, 100000000 ! Just a delay
                        do k = 1, 50 ! more delay
                                j = i * i * k - i
                        end do
                end do
		call ctime(i,date)
		print *, 'Program ended on ', date
	end program test_ctime

