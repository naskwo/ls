# See https://www.thoughtco.com/decimal-degrees-conversion-1434592

DEGREE = "\xC2\xB0"
MINUTES_PER_DEGREE = 60
SECONDS_PER_MINUTE = 60
SECONDS_PER_DEGREE = MINUTES_PER_DEGREE * SECONDS_PER_MINUTE

def dms(degrees_float)
  total_seconds = (degrees_float * SECONDS_PER_DEGREE).round.abs
  degrees, remaining_seconds = total_seconds.divmod(SECONDS_PER_DEGREE)
  minutes, seconds = remaining_seconds.divmod(SECONDS_PER_MINUTE)
  if degrees_float < 0
    format(%(-#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds)
  else
    format(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds)
  end
end

puts dms(-76.73)

puts dms(30) == %(30°00'00")
puts dms(-76.73) == %(-76°43'48")
puts dms(254.6) == %(254°36'00")
puts dms(93.034773) == %(93°02'05")
puts dms(0) == %(0°00'00")
puts dms(360) == %(360°00'00") || dms(360) == %(0°00'00")
