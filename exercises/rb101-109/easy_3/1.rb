numbers = []
number_prompts = ['1st','2nd','3rd','4th','5th','last']

number_prompts.each do |n|
  puts "Enter the #{n} number:"
  numbers << gets.chomp.to_i
end

first_five = numbers.take(5)
last_num = numbers.last

if first_five.include? last_num
  puts "The number #{last_num} appears in #{first_five}."
else
  puts "The number #{last_num} does not appear in #{first_five}."
end
