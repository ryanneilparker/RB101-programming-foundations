# Create a method that takes a positive integer number 
# and returns the next bigger number formed byh the same digits:

# 12 ==> 21
# 513 => 531
# 2017 ==> 2071
# if no bigger number exists return -1:

# 9 ==> -1
# 111 ==> -1
# 531 ==> -1

=begin
PROBLEM
inputs: +ve int
ouputs: +ve int
requirements: output must be composed of same digits as input, output must be bigger than input
questions: is it always int?, can i mutate orginaal?, what happens when int is -ve?

EXAMPLES
next_num(9) == -1
next_num(2017) == 2071
next_num(111) == -1
next_num(513) == 531

DATA
int
array

ALGO
given an integer
divide it up into its digits
rearrange those digits in every possible order
recombing all the arrangements into integers
check if any of th new ints are bigger than the first one
if so return that number
else
  return -1

=end

require "pry"

def permutations(integer)
  integer.digits.permutation.map(&:join)
end


def next_num(integer)
  permutations = permutations(integer).sort
  bigger_num = 0

  permutations.each do |combo|
    if combo.to_i > integer
      bigger_num = combo.to_i
      break
    else
      bigger_num = -1
    end
  end
#binding.pry
  bigger_num
end

p next_num(9) == -1
p next_num(2017) == 2071
p next_num(111) == -1
p next_num(513) == 531