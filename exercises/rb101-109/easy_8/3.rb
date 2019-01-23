def substrings_at_start(string)
  arr_output = []

  0.upto(string.size-1) do |i|
    arr_output << string[0..i]
  end

  arr_output
end

p substrings_at_start('abc')

puts substrings_at_start('abc') == ['a', 'ab', 'abc']
puts substrings_at_start('a') == ['a']
puts substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
