#######################################
# sum1   ---> compute the sum of the
# first n integers selected with step s
#
# sumf   ---> same as sum1, but saves
# output to file
#
# inpdat ---> compute the average of
# coordinates in a 3D array of random
# points with max. 1000 elements
# contained in the file randpoints.csv
#
# randpoints ---> create the ascii
# file randpoints.csv input for inpdat
# its first line contain the size S of
# the arrays, the rest coordinates
# x,y,z of 3D points in S lines
#######################################
F77 = f77
RM = rm -f
EEXT = 
OEXT = .o
DEXT = .csv
SHELL= bash
S= 100

all: sum1 sumf inpdat stfun

sum1: sum1.f
	$(F77) $< -o $@

sumf: sumf.f
	$(F77) $< -o $@

inpdat: inpdat.f randpoints$(DEXT)
	$(F77)	$< -o $@

stfun: stfun.f
	$(F77)	$< -o $@
	
randpoints$(DEXT): randpoints.sh
	$(SHELL) randpoints.sh $(S)

	
.PHONY: clean all

clean:
	$(RM) sum1 sumf inpdat stfun randpoints.csv inpar.txt results.txt


