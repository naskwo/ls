def format_money(amount)
  sprintf('%.2f', amount)
end

print "What is the total bill? (in $) "
total = gets.chomp.to_f
print "What is the tip percentage? (as %) "
percentage = gets.chomp.to_f

tip = (total * percentage / 100).round(2)
total = (total + tip).round(2)

puts ""
puts "The tip is $#{format_money(tip)}"
puts "The total including tip is $#{format_money(total)}"
