# Rename method (add bang) as it mutates the caller
def double_numbers!(numbers)

  counter = 0

  loop do
    break if counter == numbers.size

    current_number = numbers[counter]
    numbers[counter] = current_number * 2

    counter += 1
  end

  numbers
end

my_numbers = [1, 4, 3, 7, 2, 6]
print double_numbers!(my_numbers) # => [2, 8, 6, 14, 4, 12]