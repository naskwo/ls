# def digit_list(num)
#   arr = []
#   counter = 0
#   num = num.to_s
#   while counter < num.to_s.size
#     arr.push num[counter].to_i
#     counter += 1
#   end

#   arr
# end

# def digit_list(number)
#   digits = []
#   loop do
#     number, remainder = number.divmod(10)
#     digits.unshift(remainder)
#     p number
#     break if number == 0
#   end
#   digits
# end

def digit_list(number)
  number.to_s.chars.map(&:to_i)
end

puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true