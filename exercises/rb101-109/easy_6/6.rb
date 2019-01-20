# def merge(*arr)
#   arr[0].each { |element| arr[1].delete element }
#   arr[0] + arr[1]
# end

def merge(*arr)
  arr[0] | arr[1]
end

puts merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]
