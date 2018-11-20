h1 = { a: 1, b: 2, c: 3, d: 4}

h1.each_key { |k| puts k }
h1.each_value { |k| puts k }
h1.each_pair { |k,v| puts "#{k}: #{v}" }
