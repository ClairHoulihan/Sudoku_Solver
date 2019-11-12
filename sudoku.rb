#!/usr/bin/ruby

require 'matrix.rb'

=begin
Goal: to use a sudoku template and solve the puzzle using a given file template
Example of the file template:

5 3 ? | ? 7 ? | ? ? ?
6 ? ? | 1 9 5 | ? ? ?
? 9 8 | ? ? ? | ? 6 ?
______________________

8 ? ? | ? 6 ? | ? ? 3
4 ? ? | 8 ? 3 | ? ? 1
7 ? ? | ? 2 ? | ? ? 6
______________________

? 6 ? | ? ? ? | 2 8 ?
? ? ? | 4 1 9 | ? ? 5
? ? ? | ? 8 ? | ? 7 9

Where ? marks are numbers to be determined and | and _ are separating the 9 tiles

Some rules for Sudoku,

1) Each row, column and tile must contain the numbers 1-9
2) Each row, column and tile must only contain one instance of a number (1-9)

Some things to also look out for,

1) If the board is incorrect (breaks a rule above), the program should exit and print an error
2) If the given file does not exist, then we should exit the program and give an error

At the end, print the solution for the board given in the template
In the case above, a solution would be

5 3 4 | 6 7 8 | 9 1 2
6 7 2 | 1 9 5 | 3 4 8
1 9 8 | 3 4 2 | 5 6 7
______________________

8 5 9 | 7 6 1 | 4 2 3
4 2 6 | 8 5 3 | 7 9 1
7 1 3 | 9 2 4 | 8 5 6
______________________

9 6 1 | 5 3 7 | 2 8 4
2 8 7 | 4 1 9 | 6 3 5
3 4 5 | 2 8 6 | 1 7 9

=end

# The class Board will contain the matrix and the methods for working with a board
class Board
	
	
	
end

# createBoard method will create a board based on the template file
# input: file = The file given by the user
# output:
def createBoard file

	begin
		lines = IO.readlines(template)
	
	rescue Exception => e
		puts e.message
		puts e.backtrace.inspect
	end	

end

# Check if we were given the correct amount of parameters (i.e. 1 parameter)
if ARGV.length != 1
	puts "Usage: #{$0} 'template file'"
	exit(1)
end

template = ARGV[0]

createBoard template
	

