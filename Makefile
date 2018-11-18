
# Name: Barbara Ristau
# Course: CS178 Build Automation for DevOps and QA
# CRN: 76718-831
# Date: 11/6/2018
# Assignment: 5A-1: Makefile - Build and Launch Server CountThrees

# DESCRIPTION: This program is a makefile with two targets:
# 1. CountThrees -- an executable file that counts the number of 32 bit ints
# that have the value of 3's, as found in the binary file threesData.bin
# 2. RunServerCountThrees: This is a target that launches the executable

# HOW TO USE: in the command line, enter make or Make CountThrees in order 
# to compile the files in the directory and obtian an executable file.
# Enter make RunServerCountThrees to execute the CountThrees file.
# Enter make clean to delete all files created when running this makefile.

CC=gcc

# CountThrees Description:
# The first command described below reads the readInt32BitLE.c file 
# and creates the object of this file.
# The second command compiles the ServerCountThrees.c file and creates 
# the object of this file
# The third command creates the compiled executable file CountThrees. 

CountThrees:
	$(CC) -c readInt32BitLE.c -o readInt32BitLE.o
	$(CC) -c ServerCountThrees.c -o ServerCountThrees.o
	$(CC) -o CountThrees readInt32BitLE.o ServerCountThrees.o 

# RunServerCountThrees Description: 
# This target depends on the existence of the executable CountThrees
# and threesData.bin. 

runServerCountThrees: CountThrees threesData.bin
	./CountThrees

# Clean Description: 
# This command deletes the executable file and all the object files 
# from the directory. 

clean:
	rm -rf CountThrees readInt32BitLE.o ServerCountThrees.o 


