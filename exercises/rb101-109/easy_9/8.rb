# def sequence(int_count = 0, int_initial = 0)
#   arr = []
#   int_count.times do |i|
#     arr << int_initial * (i + 1)
#   end
#   arr
# end

def sequence(count, first)
  (1..count).map { |idx| idx * first }
end


puts sequence(5, 1) == [1, 2, 3, 4, 5]
puts sequence(4, -7) == [-7, -14, -21, -28]
puts sequence(3, 0) == [0, 0, 0]
puts sequence(0, 1000000) == []
