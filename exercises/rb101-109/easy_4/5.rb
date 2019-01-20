def multisum(int)
  # sum = 0
  # (1..int).to_a.each do |n|
  #   sum += n if (n % 3 == 0) || (n % 5 == 0)
  # end
  1.upto(int).inject(0) { |sum, i| (0 == i % 3 || 0 ==  i % 5) ? sum + i : sum }
  # (1..int).to_a.select {|i| i % 3 == 0 || i % 5 == 0 }.reduce(:+)
  # sum
end
puts multisum(3) == 3
puts multisum(5) == 8
puts multisum(10) == 33
puts multisum(1000) == 234168
