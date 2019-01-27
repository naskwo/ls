def repeater(string)
  string.chars.map {|c| c + c }.join
end

puts repeater('Hello')

puts repeater('Hello') == "HHeelllloo"
puts repeater("Good job!") == "GGoooodd  jjoobb!!"
puts repeater('') == ''
