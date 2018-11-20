#  What method could you use to find out if a Hash contains a specific value in it?
#  Write a program to demonstrate this use.

h1 = {a: 100, b: 200, c: 300, d: 400}

# p h1.select { |k,v| v == 200 }
p h1.has_value? 100
