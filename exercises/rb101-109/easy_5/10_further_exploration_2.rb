NEWLINE = "\n"
LIMIT = 80

def print_hor_line(length)
  print "+"
  length.times { print "-"}
  print "+"
end

def print_content(length,arr=[])
  if arr.size == 0
    print "|"
    length.times { print " "}
    print "|"
  else
    arr.each_with_index do |string, index|
      print "|"
      print string.center length
      print "|"
      print "\n" unless index == arr.size - 1
    end
  end
end

def get_string_lines(string)
  return [string, string.size] if string.size <= LIMIT

   string.chars.each_with_index do |char,index|
     string[index] = "#{string[index]}\n" if ( index > 0 && index % (LIMIT-1) == 0)
   end

  [string.lines(chomp: true), LIMIT]
end

def print_in_box(string)
  string, string_length = get_string_lines(string)
  string_padding = 1
  banner_width = string_length + string_padding * 2

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

print_in_box('The best programs are written so that computing machines can perform them quickly and so that human beings can understand them clearly. A programmer is ideally an essayist who works with traditional aesthetic and literary forms as well as mathematical concepts, to communicate the way that an algorithm works and to convince a reader that the results will be correct. ~ Donald Knuth')
