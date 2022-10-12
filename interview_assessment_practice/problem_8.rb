# Create a method that takes a positive integer number
# and returns the next bigger number formed by the same digits

=begin
PROBLEM
inputs: int
outputs: int
requirements: rearrange digits to form a bigger number, else return -1
questions: always ints? (yes), negative nums? (no)

ALGO
break the number up into digits
order from biggest to smallest
if new number bigger return
else return -1
=end

def next_num(int)
  digits = int.digits

  permutations = digits.permutation.to_a.map { |permutation| permutation.join.to_i }.sort

  return -1 unless permutations.any? { |permutation| permutation > int }

  permutations.each do |permutation|
    return permutation if permutation > int
  end
end

p next_num(12) == 21
p next_num(513) == 531
p next_num(2017) == 2071
p next_num(9) == -1
p next_num(111) == -1
p next_num(531) == -1
