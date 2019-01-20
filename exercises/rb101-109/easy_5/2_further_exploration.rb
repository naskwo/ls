SECONDS_PER_MINUTE = 60

def time_of_day(delta_minutes)
  time = Time.new(2019, 01, 20, 0, 0)
  (time + (SECONDS_PER_MINUTE * delta_minutes)).strftime("%A %0k:%M")
end

puts time_of_day(0)
puts time_of_day(-3)
puts time_of_day(35)
puts time_of_day(-1437)
puts time_of_day(3000)
puts time_of_day(800)
puts time_of_day(-4231)
