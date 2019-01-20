print "What is your name? "
input = gets.chomp.capitalize

name = input.gsub(/!/, '')
greeting = "Hello #{name}."

(greeting << " why are we screaming?").upcase! if input[-1] == '!'

puts greeting

