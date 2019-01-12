def get_uuid
  numbers = (0..10).to_a
  letters = ('a'..'f').to_a
  chars = numbers + letters

  output = ''
  32.times do |i|
    output << "-" if ( i == 8 || i == 11 || i == 15 || i == 19 )
    output << chars.sample.to_s
  end

  output
end

p get_uuid
