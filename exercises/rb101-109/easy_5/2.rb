HOURS = ('00'..'23').to_a
MINUTES = ('00'..'59').to_a

# def time_of_day(num)
#   "#{HOURS[num / 60 % 24]}:#{MINUTES[num % 60]}"
# end

def time_of_day(total_minutes)
  hours, minutes = total_minutes.divmod(60)
  days, hours = hours.divmod(24)

  hours_output = "%02d" % hours
  minutes_output = "%02d" % minutes

  "#{hours_output}:#{minutes_output}"
end

puts time_of_day(0)
puts time_of_day(-3)
puts time_of_day(35)
puts time_of_day(-1437)
puts time_of_day(3000)
puts time_of_day(800)
puts time_of_day(-4231)

puts time_of_day(0) == "00:00"
puts time_of_day(-3) == "23:57"
puts time_of_day(35) == "00:35"
puts time_of_day(-1437) == "00:03"
puts time_of_day(3000) == "02:00"
puts time_of_day(800) == "13:20"
puts time_of_day(-4231) == "01:29"
