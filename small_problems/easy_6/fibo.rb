=begin
Fibonacci Number Location By Length

Write a method that calculates and returns the index of the first Fibonacci number 
that has the number of digits specified as an argument. 
(The first Fibonacci number has index 1.)

PROBLEM
inputs: integer
outputs: integer
requirements: return the 1-indexed position of the first fib number with the number of digits specified
questions: always starts at 1?, return as integer?

DATA
integer 2
array [1, 1, 2, 3, 5, 8, 13]
integer 13
integer index 7

ALGO
generate fib seq until term with given digits appears
  take seed as 1
  t2 = seed + seed
  t3 = t2 + 1
determine index of this term
return adjusted index

PSEUDO
seed = 1
fib = [seed, seed]
index = nil

loop do
index = 2
fib[index] = fib[-1] + fib[-2]
break if fib[index].digits.size == length
end

=end

require 'pry'

def find_fibonacci_index_by_length(length)
  seed = 1
  fib = [seed, seed]
  index = 2

  loop do
  fib[index] = fib[-1] + fib[-2]

  break if fib[index].digits.size == length

  index += 1
  end

  index + 1
end

p find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847