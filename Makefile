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
S= 10

all: sum1 sumf inpdat

sum1: sum1.f
	$(F77) sum1.f -o sum1

sumf: sumf.f
	$(F77) sumf.f -o sumf

inpdat: inpdat.f randpoints$(DEXT)
	$(F77)	inpdat.f -o inpdat
	
randpoints$(DEXT):
	$(SHELL) randpoints.sh $(S)

	
.PHONY: clean all

clean:
	$(RM) sum1 sumf inpdat randpoints.csv inpar.txt results.txt


