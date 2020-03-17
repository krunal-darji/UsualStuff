#!/usr/bin/env python

#pyglatin project

print ("Welcome to PygLatin")

#def run():
original = raw_input("Enter a random word here: ")
if len(original) > 0 and original.isalpha():
	pyg = "ay"
	print (original[1:]) + (original[:1]) + pyg
else:
	print ("invalid entry!!")
		
#done