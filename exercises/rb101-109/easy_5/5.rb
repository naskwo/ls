def cleanup(string)
  string.gsub(/\W/,' ').squeeze(' ')
end

puts cleanup("---what's my +*& line?") == ' what s my line '
