def sequence(int)
  int > 0 ? (1..int).to_a : (int..-1).to_a
end

p sequence(-3)

puts sequence(5) == [1, 2, 3, 4, 5]
puts sequence(-3) == [1, 2, 3]
puts sequence(1) == [1]
