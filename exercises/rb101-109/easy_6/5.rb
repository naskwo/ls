# def reverse(arr)
#   i = 0
#   new_arr = []
#   while i < arr.size
#     new_arr[i] = arr[-(i+1)]
#     i += 1
#   end
#   new_arr
# end

# def reverse(arr)
#   result_arr = []
#   arr.reverse_each { |e| result_arr << e }
#   result_arr
# end

# def reverse(arr)
#   arr.each_with_object([]) { |element, new_arr| new_arr << arr[-1-(new_arr.size)] }
# end

def reverse(arr)
  new_arr = []
  arr.reduce(-1) do |pos_in_arr|
    new_arr << arr[pos_in_arr]
    pos_in_arr -= 1
  end
  new_arr
end

p reverse([1,2,3,4])

puts reverse([1,2,3,4]) == [4,3,2,1]          # => true
puts reverse(%w(a b e d c)) == %w(c d e b a)  # => true
puts reverse(['abc']) == ['abc']              # => true
puts reverse([]) == []                        # => true

list = [1, 3, 2]                      # => [1, 3, 2]
p new_list = reverse(list)              # => [2, 3, 1]
puts list.object_id != new_list.object_id  # => true
puts list == [1, 3, 2]                     # => true
puts new_list == [2, 3, 1]                 # => true
