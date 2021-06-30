	program test_fdate
		integer(8) :: i, j, k
		character(len=30) :: date
		call fdate(date)
		print *, 'Program started on ', date
		do i = 1, 100000000 ! Just a delay
			do k = 1, 50 ! more delay
				j = i * i * k - i
			end do
		end do
		call fdate(date)
		print *, 'Program ended on ', date
	end program test_fdate
