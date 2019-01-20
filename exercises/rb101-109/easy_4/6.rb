def running_total(arr)
  sum = 0
  arr.map { |e| sum = e + sum }
end

def running_total(arr)
  sum = 0
  arr.each_with_object([]) { |e,new_arr| new_arr << sum = e + sum }
end

def running_total(arr)
  results = []
  # Jerry-rigging #inject to behave like #map, save for the output of sum
  arr.reduce(0) { |sum,n| results << sum += n; sum }
  results
end



puts running_total([2, 5, 13]) == [2, 7, 20]
puts running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
puts running_total([3]) == [3]
puts running_total([]) == []
