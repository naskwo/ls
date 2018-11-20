# loop do

#   puts "What are you thinking about now? (enter STOP to exit)"
#   thought = gets.chomp.to_s

#   puts "Oooh, I just love #{thought}!"

#   if thought == 'STOP'
#     puts "Goodbye."
#     break
#   end

# end

thought = ''

while thought != 'STOP' do
  puts "What are you thinking about now? (enter STOP to exit)"
  thought = gets.chomp.to_s
  puts "Oooh, I just love #{thought}!"
end
