# def multiply_list(*arr)
#   i = -1
#   arr[0].map do |e|
#     i += 1
#     e * arr[1][i]
#   end
# end

def multiply_list(*arr)
  arr[0].zip(arr[1]).map { |output_array| output_array.reduce(:*) }
end

p multiply_list([3, 5, 7], [9, 10, 11])

puts multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]