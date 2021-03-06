GLYPH = '*'
SPACE = ' '

def print_row(length, stars)
  print (GLYPH * stars).center(length)
end

def print_diamond(size)
  middle = (size/2.0).ceil
  stars = 1
  row = 1

  1.upto(size**2) do |i|
    if i % size == 0
      print_row(size, stars)

      row < middle ? stars += 2 : stars -= 2
      row += 1
      print "\n"
    end
  end
end

print_diamond(15)
