arr = %w{The quick brown fox ate a lazy rabbit}

arr.each_with_index do |word,i|

puts "#{i}: #{word}"

end
