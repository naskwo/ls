def output_name(name = "Teddy")
  puts "#{name} is #{rand(20..200)} years old!"
end

puts "Please enter a name:"

output_name(gets.chomp.capitalize)
