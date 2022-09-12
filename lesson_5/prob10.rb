# Given the following data structure and without modifying the original array, 
# use the map method to return a new array identical in structure to the original 
# but where the value of each integer is incremented by 1.

arr = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]

# loop through array
new_arr = []
arr.each do |hash|
  new_arr << hash.map { |key, value| [key, value += 1] }.to_h
end

p arr
p new_arr

