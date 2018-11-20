loop do
  puts "Do you want this again? (y/n)"
  answer = gets.chomp.to_s.downcase
  if answer != 'y'
    break
  end
end
