def penultimate(string = '')
  return nil if string == ''

  words = string.split
  num_words = words.size
  if num_words == 1
    return string
  else
    words[(num_words/2.0-1).ceil]
  end
end

puts penultimate('last word') == 'last'
puts penultimate('last') == 'last'
puts penultimate('last bananas yellow') == 'bananas'
puts penultimate('') == nil
puts penultimate('Launch School is great!') == 'School'