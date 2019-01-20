arr = []
operators = [:+,:-,:*,:/,:%,:**]

puts "==> Enter the first number:"
arr << gets.chomp.to_i
puts "==> Enter the second number:"
arr << gets.chomp.to_i

operators.each do |op|
  result = arr.reduce(&op)
  puts "==> #{arr[0]} #{op} #{arr[1]} = #{result}"
end
