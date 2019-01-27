def uppercase?(string)
  string == string.upcase
end

# def uppercase?(string)
#   string.chars.all? do |c|
#     if c =~ /[a-z]/i
#       c =~ /[A-Z]/
#     else
#       true
#     end
#   end
# end

puts uppercase?('t') == false
puts uppercase?('T') == true
puts uppercase?('Four Score') == false
puts uppercase?('FOUR SCORE') == true
puts uppercase?('4SCORE!') == true
puts uppercase?('') == true
