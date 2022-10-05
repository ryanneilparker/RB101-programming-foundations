=begin
Name Swapping
Write a method that takes a first name, 
a space, 
and a last name passed as a single String argument, 
and returns a string that contains the last name, 
a comma, 
a space, 
and the first name.

PROBLEM
inputs: string
outputs: string
requirements: reformat name
questions: muatate?, more than two names?, numeric chars?

DATA
string name: 'Ryan Parker'
array names: ['Ryan', 'Parker']
string new_name: 'Parker, Ryan'

ALGO
split name into names
reverse array
join array and add comma

PSEUDO
names = name.split(' ')
names.reverse!
names.join(', ')
=end

require 'pry'

def swap_name(name)
  names = name.split
  names.reverse!
  names.join(', ')
end

p swap_name('Joe Roberts') == 'Roberts, Joe'