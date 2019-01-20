def palindrome?(input)

  input == input.reverse
end

puts palindrome?('madam') == true
puts palindrome?([3,2,1,1,2,3]) == true
puts palindrome?('Madam') == false          # (case matters)
puts palindrome?("madam i'm adam") == false # (all characters matter)
puts palindrome?('356653') == true
