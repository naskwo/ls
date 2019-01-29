GLYPH = '*'
SPACE = ' '

def print_row(length, stars)
  middle = (length/2.0).floor
  offset = stars/2
  arr_output = Array.new(length,SPACE)
  arr_output.map!.with_index do |_,i|

    if stars == 1 && i == middle
      GLYPH
    elsif stars > 1 && ( i == middle - offset || i == middle + offset )
      GLYPH
    else
      SPACE
    end
  end
  print arr_output.join
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
