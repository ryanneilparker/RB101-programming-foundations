def rolling_buffer(buffer, max_buffer_size, new_element)
  buffer << new_element
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

buffer = [1, 2, 3, 4, 5]
puts "Buffer before new element: #{buffer}."

rolling_buffer(buffer, 5, 6)
puts "Buffer after new element: #{buffer}."