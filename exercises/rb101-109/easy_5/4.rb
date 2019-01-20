def swap_first_last_characters(word)
  word[0], word[-1] = word[-1], word[0]
  word
end

def swap(words)
  result = words.split.map do |word|
    swap_first_last_characters(word)
  end
  result.join(' ')
end

# def swap(string)
#   words = string.split(' ')
#   output = words.map do |word|
#     if word.size == 1
#       word
#     else
#       word[-1] + word[1...-1] + word[0]
#     end
#   end
#   output.join(' ')
# end

# puts swap('Oh what a wonderful day it is')

puts swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
puts swap('Abcde') == 'ebcdA'
puts swap('a') == 'a'
