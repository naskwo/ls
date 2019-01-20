require 'pry'
DICTIONARY = { 0 => '0', 1 => '1', 2 => '2', 3 => '3',
               4 => '4', 5 => '5', 6 => '6', 7 => '7',
               8 => '8', 9 => '9' }

def integer_to_string(int)
  output = ''
  return '0' if int == 0
  while int > 0
    output.prepend DICTIONARY[int % 10]
    int /= 10
  end
  output
end

puts integer_to_string(4321) == '4321'
puts integer_to_string(0) == '0'
puts integer_to_string(5000) == '5000'
