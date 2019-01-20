SQMETERS_TO_SQFEET = 10.7639
SQFEET_TO_SQMETERS = 0.09290304
SQFEET_TO_SQINCHES = 144

puts "Enter the length of the room in feet:"
length = gets.chomp.to_f

puts "Enter the width of the room in feet:"
width = gets.chomp.to_f

area_imperial = (length * width * 1.0).round(2)
area_metric = (area_imperial * SQFEET_TO_SQMETERS).round(2)

puts  "The area of the room is:\n#{area_imperial} square feet\n" \
      "(= #{area_imperial * SQFEET_TO_SQINCHES} square inches)\n" \
      "(= #{area_metric * 100} square centimeters)."
