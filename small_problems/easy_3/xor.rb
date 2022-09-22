# In this exercise, you will write a function named xor that takes two arguments,
# and returns true if exactly one of its arguments is truthy, false otherwise.
# Note that we are looking for a boolean result instead of a truthy/falsy value as returned by || and &&

# PROBLEM
# inputs: any object
# outputs: boolean
#
# EXAMPLES
# xor?(5.even?, 4.even?) == true
# xor?(5.odd?, 4.odd?) == true
# xor?(5.odd?, 4.even?) == false
# xor?(5.even?, 4.odd?) == false
#
# DATA
# convert input object into a boolean using !!
#
# ALGO
# if input1 == true && input2 == false || input1 == flase && input2 == true
#   return true
# else
#   return false

def xor?(obj1, obj2)
  operand1 = !!obj1
  operand2 = !!obj2

  if (operand1 == true && operand2 == false) || (operand1 == false && operand2 == true)
    true
  else
    false
  end
end

p xor?(5.even?, 4.even?) == true
p xor?(5.odd?, 4.odd?) == true
p xor?(5.odd?, 4.even?) == false
p xor?(5.even?, 4.odd?) == false
