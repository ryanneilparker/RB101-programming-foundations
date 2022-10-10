=begin
Diamonds!
Write a method that displays a 4-pointed diamond in an n x n grid, 
where n is an odd integer that is supplied as an argument to the method. 
You may assume that the argument will always be an odd integer.

PROBLEM
inputs: odd int
ouputs: print diamond
requirements: display a 4-pointed diamond in an n x n grid
questions: ouput or return?

DATA
input int: 3
string layer: ' * '
string layer: '***'
string layer: ' * '

ALGO
build the diamond layer by layer
starting with only the centre star in layer one
expand outwards till the middle layer is only stars
then repeat the inverse

PSEUDO
stars = 1
spaces = (n-1) / 2

(2*n).times do
  puts " " * spaces + "*" * stars + ' ' * spaces
  stars += 2
  spaces -= 1
end
=end

require 'pry'

def star(n)
  stars = 1
  spaces = (n-1) / 2

  (n / 2).times do
    puts ' ' * spaces + '*' * stars + ' ' * spaces
    stars += 2
    spaces -= 1
  end

  puts '*' * n

  stars = n - 2
  spaces = 1

  (n / 2).times do
    puts ' ' * spaces + '*' * stars + ' ' * spaces
    stars -= 2
    spaces += 1
  end

  nil
end

p star(9)

