# def sum_of_sums(arr)
#   i = 0
#   sum = 0
#   return arr[0] if arr.size == 1

#   while i < arr.size
#     sub_arr = arr[0..i]
#     if sub_arr.size == 1
#       sum += sub_arr[0]
#     else
#       sum += sub_arr.reduce(&:+)
#     end
#     i += 1
#   end

#   sum
# end

def sum_of_sums(numbers)
  sum_total = 0
  1.upto(numbers.size) do |count|
    sum_total += numbers.slice(0, count).reduce(:+)
  end
  sum_total
end

puts sum_of_sums([3, 5, 2])

puts sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
puts sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
puts sum_of_sums([4]) == 4
puts sum_of_sums([1, 2, 3, 4, 5]) == 35
