def sort_desc(array)
  array.sort_by! do |element|
    element.to_i
  end
  .reverse!
end


arr = %w(10 11 9 7 8)
p arr

p sort_desc(arr)