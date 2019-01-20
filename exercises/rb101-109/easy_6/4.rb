def reverse!(array)
  left_index = 0
  right_index = -1

  while left_index < array.size
    p "Before: #{array}"
    p right_index
        p left_index

    array[left_index], array[right_index] = array[right_index], array[left_index]
    p "After: #{array}"
    left_index += 1
    right_index -= 1



    p "---"
  end

  array
end

# MEH!

# def reverse!(arr)
#   i = 0
#   new_arr = []
#   loop do
#     new_arr[i] = arr[-(i+1)]
#     i += 1
#     break if i > arr.size - 1
#   end
#   new_arr
# end

list = [1,2,3,4]
p reverse!(list)
# p result = reverse!(list)
# p result == [4, 3, 2, 1]
# puts list == [4, 3, 2, 1]
# puts list.object_id == result.object_id

# list = %w(a b e d c)
# reverse!(list) == ["c", "d", "e", "b", "a"]
# list == ["c", "d", "e", "b", "a"]

# list = ['abc']
# reverse!(list) == ["abc"]
# list == ["abc"]

# list = []
# reverse!(list) == []
# list == []
