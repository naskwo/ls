def rotate_array(ary)
  ary[1..-1] + [ary[0]]
end

def rotate_string(str)
  return '' if str.empty?
  rotate_array(str.chars).join
end

def rotate_integers(int)
  return '' if int.to_s.empty?
  rotate_array(int.to_s.chars).join.to_i
end

puts rotate_string('grandfather') == 'randfatherg'
puts rotate_string('') == ''

puts rotate_integers('') == ''
puts rotate_integers(0) == 0
puts rotate_integers(1234) == 2341

puts rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
puts rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
puts rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
puts rotate_array(x) == [2, 3, 4, 1]   # => true
x == [1, 2, 3, 4]                 # => true
