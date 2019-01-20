SQMETERS_TO_SQFEET = 10.7639

puts "Enter the length of the room in meters:"
length = gets.chomp.to_f

puts "Enter the width of the room in meters:"
width = gets.chomp.to_f

area_metric = (length * width * 1.0).round(2)
area_imperial = (area_metric * SQMETERS_TO_SQFEET).round(2)

puts "The area of the room is #{area_metric} square meters " \
      "(#{area_imperial} square feet)."
