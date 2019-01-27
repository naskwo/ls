def get_letter(score)
  case score
  when 0...60
    'F'
  when 60...70
    'D'
  when 70...80
    'C'
  when 80...90
    'B'
  else
    'A'
  end
end

def get_grade(*scores)
  get_letter(scores.reduce(:+) / scores.size)
end

puts get_grade(95, 90, 93) == "A"
puts get_grade(50, 50, 95) == "D"
