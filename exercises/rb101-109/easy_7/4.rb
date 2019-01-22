LOWERCASE = ("a".."z").to_a
UPPERCASE = ("A".."Z").to_a

# def swapcase(string)
#   output = string.chars.map do |char|
#     if lc_index = LOWERCASE.find_index(char)
#       char = UPPERCASE[lc_index]
#     elsif uc_index = UPPERCASE.find_index(char)
#       char = LOWERCASE[uc_index]
#     else
#       char
#     end
#   end
#   output.join
# end

def swapcase(string)
  characters = string.chars.map do |char|
    if char =~ /[a-z]/
      char.upcase
    elsif char =~ /[A-Z]/
      char.downcase
    else
      char
    end
  end
  characters.join
end

puts swapcase('CamelCase') == 'cAMELcASE'
puts swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'