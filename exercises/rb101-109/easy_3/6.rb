# def xor?(a,b)
#   trues = 0
#   trues += 1 if a
#   trues += 1 if b
#   return true if trues == 1
#   false
# end

def xor?(value1, value2)
  (value1 && !value2) || (value2 && !value1)
end

puts xor?(5.even?, 4.even?) == true
puts xor?(5.odd?, 4.odd?) == true
puts xor?(5.odd?, 4.even?) == false
puts xor?(5.even?, 4.odd?) == false
