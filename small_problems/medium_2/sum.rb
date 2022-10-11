=begin
Sum Square - Square Sum
Write a method that computes the difference between 
the square of the sum of the first n positive integers 
and the sum of the squares of the first n positive integers.

PROBLEM
inputs: int
outputs: int
requirements: calculate sum square and square sum, find difference
questions: floats? (no), mutate? (no), helper methods? (yes), zero input? (no), negative input? (no)

DATA
input int: 3
sum_square int: 36
square_sum int: 14
difference int: 22

ALGO
compute sum sqaure
compute square sum
return difference

PSEUDO
#sumsquare
(1..n).to_a.sum ** 2

#squaresum
(1..n).to_a.map { |num| num ** 2}.sum

sumsquare - squaresum
=end

require 'pry'

def sum_square(n)
  (1..n).to_a.sum ** 2
end

def square_sum(n)
  (1..n).to_a.map { |num| num ** 2 }.sum
end

def sum_square_difference(n)
  sum_square(n) - square_sum(n)
end

p sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150