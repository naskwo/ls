def rotate_array(ary)
  ary[1..-1] + [ary[0]]
end

def rotate_rightmost_digits(int, digits)
  ary = int.to_s.chars
  (ary[0..-digits-1] + rotate_array(ary[-digits, digits])).join.to_i
end

def max_rotation(int)
  number_of_digits = int.digits.size
  number_of_digits.downto(2) do |n|
    int = rotate_rightmost_digits(int, n)
  end
  int
end


puts max_rotation(735291) == 321579
puts max_rotation(3) == 3
puts max_rotation(35) == 53
puts max_rotation(105) == 15 # the leading zero gets dropped
puts max_rotation(8_703_529_146) == 7_321_609_845
