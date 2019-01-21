# def include?(arr,search_key)
#   arr.each { |e| return true if e == search_key }
#   false
# end

def include?(arr,search_key)
  !!arr.index(search_key)
end

puts include?([1,2,3,4,5], 3) == true
puts include?([1,2,3,4,5], 6) == false
puts include?([], 3) == false
puts include?([nil], nil) == true
puts include?([], nil) == false
