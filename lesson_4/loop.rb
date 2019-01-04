a = %w(a b c d e)
counter = 0

loop do
  break if counter == a.size
  puts a[counter]
  counter += 1
end

a.each do |letter|
  puts letter
end

hash = { a: 1, b: 2, c: 3 }

hash.each do |key, value|
  puts "The key is #{key} and the value is #{value}"
end