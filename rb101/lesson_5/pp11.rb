arr = [[2], [3, 5, 7], [9], [11, 13, 15]]

# new_arr = arr.select do |sub_arr|
#   sub_arr.select { |e| e % 3 == 0 }
# end

# p new_arr

# arr.select do |sub_arr|
#   p sub_arr.select { |e| e % 3 == 0 }
# end

# When returning a new array, call Array#map on the original array
new_arr = arr.map do |sub_arr|
  sub_arr.select do |e|
    e % 3 == 0
  end
end

p new_arr
