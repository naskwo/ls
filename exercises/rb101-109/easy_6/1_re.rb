DEGREE = "\xC2\xB0"
MINS_IN_DEGREE = 60
SECONDS_IN_MIN = 60
SECONDS_IN_DEGREE = MINS_IN_DEGREE * SECONDS_IN_MIN

def dms(float)
  converted_to_seconds = float * SECONDS_IN_DEGREE
  degrees, remaining_seconds = converted_to_seconds.divmod(SECONDS_IN_DEGREE)
  minutes, seconds = remaining_seconds.divmod(SECONDS_IN_MIN)
  format(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds)
end

puts dms(30) == %(30°00'00")
puts dms(76.73) == %(76°43'48")
puts dms(254.6) == %(254°36'00")
puts dms(93.034773) == %(93°02'05")
puts dms(0) == %(0°00'00")
puts dms(360) == %(360°00'00") || dms(360) == %(0°00'00")
