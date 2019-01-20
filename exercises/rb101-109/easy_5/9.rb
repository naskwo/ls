# def crunch(string)
#   output = ''
#   string.each_char do |char|
#       output << char unless output[-1] == char
#     end
#   output
# end


# def crunch(text)
#   index = 0
#   crunch_text = ''
#   while index <= text.length - 1
#     crunch_text << text[index] unless text[index] == text[index + 1]
#     index += 1
#   end
#   crunch_text
# end

# def crunch(input_str)
#   input_str.chars.chunk { |char| char.ord }.map { |return_value, chunked_arr| chunked_arr.first }.join
# end

puts crunch('ddaaiillyy ddoouubbllee')

puts crunch('ddaaiillyy ddoouubbllee') == 'daily double'
puts crunch('4444abcabccba') == '4abcabcba'
puts crunch('ggggggggggggggg') == 'g'
puts crunch('a') == 'a'
puts crunch('') == ''
