def multiply(a,b)
  a * b
end

def square(a)
  multiply(a,a)
end

def power(base, exp)
  result = 1
  exp.times { |_| result = multiply(result,base) }
  result
end

puts power(2,3) == 8
puts power(9,2) == 81
