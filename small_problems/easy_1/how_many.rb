=begin
Write a method that counts the number of occurrences of each element in a given array.

The words in the array are case-sensitive: 'suv' != 'SUV'. Once counted, print each element alongside the number of occurrences.

Expected output:

Copy Code
car => 4
truck => 3
SUV => 1
motorcycle => 2
=end

def count_occurrences(array)
  # create occurences hash
  occurences = {}
  # extract unique keys
  keys = array.uniq
  # loop through keys
  keys.each do |key|
    occurences[key] = 0
    # loop through array of values
    array.each do |value|
      occurences[key] += 1 if key == value
    end
  end
  occurences
end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

puts count_occurrences(vehicles)