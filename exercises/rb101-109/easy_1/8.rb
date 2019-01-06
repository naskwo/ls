def average(numbers)
  sum = numbers.inject(:+)
  sum.to_f / numbers.count
end

puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40