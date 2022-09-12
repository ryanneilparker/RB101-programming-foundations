# Given this data structure, return a new array of the same structure 
# but with the sub arrays being ordered (alphabetically or numerically as appropriate) in descending order.

arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]


new_arr = []
# loop through array
arr.each do |sub_arr|
  # sort each sub array and appen to new array
  new_arr << sub_arr.sort {|a, b| b <=> a}
end
# return new array
p new_arr
