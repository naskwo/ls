require 'pry'

DIGITS = ['0','1','2','3','4','5','6','7','8','9']

def integer_to_string(int)
  output = ''
  loop do
    # binding.pry
    int, remainder = int.divmod(10)
    output.prepend(DIGITS[remainder])
    break if int == 0
  end
  output
end

def signed_integer_to_string(number)
  return '0' if number == 0

  if number < 0
    signature = '-'
    number *= -1
  else
    signature = '+'
  end
    signature + integer_to_string(number)
end

puts signed_integer_to_string(4321) == '+4321'
puts signed_integer_to_string(-123) == '-123'
puts signed_integer_to_string(0) == '0'
