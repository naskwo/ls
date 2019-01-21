def halvsies(arr)
  divider = (arr.size/2.0).ceil
  arr_1 = arr.slice(0...divider)
  arr_2 = arr.slice(divider..arr.size)
  [arr_1,arr_2]
end

# p halvsies([1, 2, 3, 4, 5])

puts halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
puts halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
puts halvsies([5]) == [[5], []]
puts halvsies([]) == [[], []]
