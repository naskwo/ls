def substrings_at_start(string)
  arr_output = []

  0.upto(string.size-1) do |i|
    arr_output << string[0..i]
  end

  arr_output
end

def substrings(string)
  output = []
  0.upto(string.size-1) do |i|
     output.concat(substrings_at_start(string[i..-1]))
  end
  output
end

puts substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]
