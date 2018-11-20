def caps_long(string)
  if (string.length > 10)
    string.upcase
  else
    string
  end
end

puts caps_long("I love bananas.")
