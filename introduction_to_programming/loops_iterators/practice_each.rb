names = %w{Bob Joe Nate}
x = 1
names.each do |name|
  puts "#{x}. #{name}"
  x += 1
end
