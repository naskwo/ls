def draw_line(stars = 0, empty = 0)
  empty.times { print " " }
  stars.times { print "*" }
  print "\n"
end

def triangle(length)
  length.times do |i|
    empty = i+1
    stars = length-empty
    puts (' ' * empty) + ('*' * stars)
  end
end

triangle(9)
