arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]


sorted_arr = arr.sort_by do |sub_arr|
  sub_arr.select do |num| # find the odd numbers in the sub-array, and use send the return value to sort_by
    num.odd?
  end
end

p sorted_arr
