def substrings_at_start(string)
  arr_output = []

  0.upto(string.size-1) do |i|
    arr_output << string[0..i]
  end

  arr_output
end

def substrings(string)
  output = []
  0.upto(string.size-1) do |i|
     output.concat(substrings_at_start(string[i..-1]))
  end
  output
end

def palindrome?(string)
  string == string.reverse && string.size > 1
end

def palindromes(string)
  substrings(string).select { |substring| palindrome?(substring.downcase.gsub(/\W/,'')) }
end

p palindromes('ma-dAm')

puts palindromes('madAm') == ['madAm', 'adA']
puts palindromes('ma-dAm') == ['ma-dAm', 'a-dA']

# puts palindromes('abcd') == []
# puts palindromes('madam') == ['madam', 'ada']
# puts palindromes('hello-madam-did-madam-goodbye') == [
#   'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
#   'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
#   '-madam-', 'madam', 'ada', 'oo'
# ]
# puts palindromes('knitting cassettes') == [
#   'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
# ]
