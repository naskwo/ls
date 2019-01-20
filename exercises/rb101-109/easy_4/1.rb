def short_long_short(a,b)
  if a.size < b.size
    short, long = a, b
  else
    short, long = b, a
  end

  short + long + short
end

puts short_long_short('abc', 'defgh') == "abcdefghabc"
puts short_long_short('abcde', 'fgh') == "fghabcdefgh"
puts short_long_short('', 'xyz') == "xyz"
