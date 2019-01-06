def stringy(length,initial=1)
  output = []
  length.times do |i| 
    if initial == 1
      altnum = 0
    else
      altnum = 1
    end

    number = i.even? ? initial : altnum
    output << number
  end
  output.join
end


puts stringy(6,0) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'