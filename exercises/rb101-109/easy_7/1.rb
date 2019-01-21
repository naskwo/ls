# def interleave(arr_1,arr_2)
#   arr_1.zip(arr_2).flatten
# end

def interleave(arr_1,arr_2)
  result = []
  arr_1.each_with_index do |element, i|
    result << element << arr_2[i]
  end
  result
end

p interleave([1, 2, 3], ['a', 'b', 'c'])

puts interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
