arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]

# new_arr = arr.select do |hsh|
#   hsh.values.all? {|e| e.even? }
# end

# p new_arr

# new_arr = arr.select do |subarr|
#   # p subarr
#   subarr.each do |k,v|
#     v.all? {|e| e.even?}
#   end
# end

# p new_arr

# new_arr = arr.select do |hsh|
#   hsh.all? do |_,v| # access hashes inside array
#     v.all? do |e| # access elements of array inside hash
#       e.even?
#     end
#   end
# end

# From this array, return the array with only the even numbers
# arr = [(1..50).to_a,(51..100).to_a]

# new_arr = arr.map do |sub_array|
#   sub_array.select do |n|
#     n.even?
#   end
# end

# p new_arr




# new_arr = arr.select do |outer|
#   outer.select do |inner|
#    inner.even?
#  end
# end

# p new_arr


# Given this data structure write some code to return an array which contains
# only the hashes where all the integers are even.

arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]

new_arr = arr.select do |hsh|
  hsh.all? do |_,v|
    v.all? do |num|
      num.even?
    end
  end
end

p new_arr
