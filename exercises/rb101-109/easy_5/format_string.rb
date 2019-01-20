def format_string!(string)
  return string if string.size <= 80

   # Insert a newline every 80 chars. Disregard grammar rules
   string.chars.each_with_index do |char,index|
     string[index] = "#{string[index]}\n" if ( index > 0 && index % 79 == 0)
   end

  string.lines(chomp: true)
end

p format_string! 'To boldly go where no one has gone before. To boldly go where no one has gone before.'
