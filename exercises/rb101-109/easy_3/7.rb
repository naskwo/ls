require 'pry'

def oddities(arr)
  output = []
  arr.each_with_index { |e,i| output << e if i.even? }
  output
end

# array.select { |x| array.index(x).even? }

def every_n_element(arr,n = 1)
  output = []

  # Using Array#slice
  (arr.size/n).times do |i|
    slice = (i+1) * n - 1
    output << arr.slice(slice)
  end

  output
end


puts every_n_element([2, 3, 4, 5, 6],3) == [4]
puts every_n_element([1, 2, 3, 4, 5, 2],2) == [2,4,2]
puts every_n_element(['abc', 'def'],2) == ['def']
puts every_n_element([123]) == [123]
puts every_n_element([]) == []
