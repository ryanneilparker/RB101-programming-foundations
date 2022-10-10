=begin
Write a recursive method that computes the nth Fibonacci number, where nth is an argument to the method.

PROBLEM
inputs: int
ouputs: int
requirements: calculate the nth term of the fib seq using a recursive technique (call, condition, return)
questions: always starts at 1?, convert input to int if string?

DATA
input int: 5

ALGO
check if the int is 1 or 2 then just return 1
if not sum the prvious two terms
  by calling on all previous terms recursively

PSEUDO
return 1 if n == 1
return 1 if n == 2

fibonacci(n - 1) + fibonacci(n - 2)
=end

require 'pry'

def fibonacci(n)
  return 1 if n == 1
  return 1 if n == 2

  fibonacci(n - 1) + fibonacci(n - 2)
end

p fibonacci(1) == 1
p fibonacci(2) == 1
p fibonacci(3) == 2
p fibonacci(4) == 3
p fibonacci(5) == 5
p fibonacci(12) == 144
p fibonacci(20) == 6765