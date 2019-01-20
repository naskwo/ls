HOURS_PER_DAY = 24
SECONDS_PER_MINUTE = 60
MINUTES_PER_HOUR = 60
MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

def extract_time(time)
  time.split(":").map(&:to_i)
end

def after_midnight(time)
  hours, minutes = extract_time time
  midnight = Time.new(2019, 01, 20, 00, 00)
  minutes_delta = midnight + ( hours * MINUTES_PER_HOUR + minutes ) * SECONDS_PER_MINUTE
  ((minutes_delta - midnight)/MINUTES_PER_HOUR % MINUTES_PER_DAY).to_i
end

def before_midnight(time)
  hours, minutes = extract_time time
  midnight = Time.new(2019, 01, 20, 00, 00)
  minutes_delta = midnight + ( hours * MINUTES_PER_HOUR + minutes ) * SECONDS_PER_MINUTE
  ((midnight - minutes_delta)/MINUTES_PER_HOUR % MINUTES_PER_DAY).to_i
end

puts after_midnight('00:00') == 0
puts before_midnight('00:00') == 0
puts after_midnight('12:34') == 754
puts before_midnight('12:34') == 686
puts after_midnight('24:00') == 0
puts before_midnight('24:00') == 0
