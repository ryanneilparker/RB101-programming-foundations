def double_odd_index_numbers(numbers)
  result_numbers = []
  counter = 0

  loop do
    break if counter == numbers.size

    current_number = numbers[counter]

    current_number *= 2 if counter.odd?

    result_numbers << current_number

    counter += 1
  end

  result_numbers
end

p my_numbers = [1, 2, 3, 4, 5, 6]
p double_odd_index_numbers(my_numbers)
p my_numbers

