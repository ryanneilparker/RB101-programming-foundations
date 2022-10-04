=begin
Double Doubles
A double number is a number with an even number of digits 
whose left-side digits are exactly the same as its right-side digits. 
For example, 44, 3333, 103103, 7676 are all double numbers. 
444, 334433, and 107 are not.

Write a method that returns 2 times the number provided as an argument, 
unless the argument is a double number; 
double numbers should be returned as-is.

PROBLEM
inputs: int
outputs: int
requirements: return twice the input unless the input is a 'double numer'
questions: mutate?, always int?

DATA
int 44
boolean true
int 44

ALGO
check if even number of digits
  if not then double and return
check if first half == second half
  if not then double and return
  else return without doubling
  end
end


PSEUDO
if int.even? && halves_same?(int)
  return int
else
  return in*2
end

=end

require 'pry'

def halves_same?(int)
  digits = int.digits
  midpoint = digits.size / 2
#
  digits[0..(midpoint - 1)] == digits[midpoint..digits.size]
end
    

def twice(int)
  int = int.to_s.delete('_').to_i
  #
  if int.size.even? && halves_same?(int) && int.digits.size > 1
    return int
  else
    return int * 2
  end
end


p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(5) == 10