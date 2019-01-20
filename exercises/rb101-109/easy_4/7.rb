DIGITS = { '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5,
           '6' => 6, '7' => 7, '8' => 8, '9' => 9, 'A' => 10, 'B' => 11,
           'C' => 12, 'D' => 13, 'E' => 14, 'F' => 15}

def string_to_integer(string)
  digits = string.chars.map { |char| DIGITS[char] }

  value = 0
  digits.each { |digit| value = 10 * value + digit }
  value
end

def hexadecimal_to_integer(string)
  digits = string.chars.map { |char| DIGITS[char.upcase] }

  value = 0
  digits.each { |digit| value = 16 * value + digit }
  value
end

puts hexadecimal_to_integer('2af3')
puts hexadecimal_to_integer('4D9f') == 19871

# puts string_to_integer('4321')
# puts string_to_integer('4321') == 4321
# puts string_to_integer('570') == 570
