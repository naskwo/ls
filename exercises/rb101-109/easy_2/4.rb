print "What is your age? "
current_age = gets.chomp.to_i

print "At what age would you like to retire? "
retirement_age = gets.chomp.to_i

this_year = Time.new.year
retirement_delta = retirement_age - current_age

puts ""
puts "It's #{this_year}. You will retire in #{this_year + retirement_delta}."
puts "You have only #{retirement_delta} years of work to go!"
