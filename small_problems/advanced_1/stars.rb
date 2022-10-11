=begin
Seeing Stars
Write a method that displays an 8-pointed star in an nxn grid, 
where n is an odd integer that is supplied as an argument to the method. 
The smallest such star you need to handle is a 7x7 grid.

PROBLEM
inputs: int
output: print
requirements: output an 8-pointed star to the console.

DATA
spaces

ALGO
print top layer
continue to middle layer
print lower layers
=end

require 'pry'

def star(n)
  inner_spaces = (n - 3) / 2
  outer_spaces = 0
  star = '*'

  (n / 2).times do
    puts (' ' * outer_spaces) + star + (' ' * inner_spaces) + star + (' ' * inner_spaces) + star + (' ' * outer_spaces)
    inner_spaces -= 1
    outer_spaces += 1
  end

  puts star * n

  inner_spaces = 0
  outer_spaces = (n - 3) / 2

  (n / 2).times do
    puts (' ' * outer_spaces) + star + (' ' * inner_spaces) + star + (' ' * inner_spaces) + star + (' ' * outer_spaces)
    inner_spaces += 1
    outer_spaces -= 1
  end
end


star(9)