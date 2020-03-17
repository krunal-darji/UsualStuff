#!/usr/bin/env python

def square():
	"""will return the square of the number entered"""
	n = raw_input("Enter a number here:")
	if n > 0:
		squared = n ** 2
		print "%d squared is %d." % (n, squared)
	else:
		print "Invalid entry"

square()


##So far this is not working... not sure why