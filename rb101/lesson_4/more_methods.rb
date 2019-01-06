# P1


{ a: 'ant', b: 'bear' }.map do |(key, value)|
  
  value.upcase! if value.size > 3
  value

end