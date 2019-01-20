# def fibonacci(n)
#   return n if n <= 1
#   fibonacci(n-1) + fibonacci(n-2)
# end

# def find_fibonacci_index_by_length(int)
#   (1..100).to_a.each do |i|
#     result = fibonacci(i)
#     return i if result.to_s.length == int
#   end
# end

def find_fibonacci_index_by_length(number_digits)
  first = 1
  second = 1
  index = 2

  loop do
    index += 1
    fibonacci = first + second
    break if fibonacci.to_s.size >= number_digits

    first = second
    second = fibonacci
  end

  index
end


# puts find_fibonacci_index_by_length(2)

puts find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
puts find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
puts find_fibonacci_index_by_length(10) == 45
puts find_fibonacci_index_by_length(100) == 476
puts find_fibonacci_index_by_length(1000) == 4782
puts find_fibonacci_index_by_length(10000) == 47847
