NEWLINE = "\n"

def print_hor_line(length)
  print "+"
  length.times { print "-"}
  print "+"
end

def print_content(length,string="")
  print "|"
  if string.size == 0
    length.times { print " "}
  else
    print string.center length
  end
  print "|"
end

def print_in_box(string)
  string_length = string.size
  string_padding = 1
  banner_width = string_length+string_padding*2

  if string.size > 80
    string = string.slice(0...77) + '...'
    return print_in_box(string)
  end

  print_hor_line banner_width
  print NEWLINE
  print_content banner_width
  print NEWLINE
  print_content(banner_width,string)
  puts NEWLINE
  print_content banner_width
  print NEWLINE
  print_hor_line banner_width
end

print_in_box('To boldly go where no one has gone before. To boldly go where no one has gone before.')
