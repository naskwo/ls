h1 = { a: 100, b: 200 }
h2 = { b: 250, c: 300, d: 400 }

p h3 = h1.merge(h2)
puts h1

puts "Bang method:"

h1.merge!(h2)
puts h1
