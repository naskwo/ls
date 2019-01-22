def multiply_all_pairs(*arr)
  arr[0].product(arr[1]).map { |sub_array| sub_array.reduce(&:*) }.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2])
puts multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]