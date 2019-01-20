print "Please write word or multiple words: "
input = gets.chomp

num_chars = input.gsub(/ /,'').size

puts ""
puts "There are #{num_chars} characters in #{input}."
