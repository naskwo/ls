def double_double?(int)
  int_s = int.to_s
  middle_index = int_s.size / 2
  int_s.size.even? && (int_s[0, middle_index] == int_s[middle_index..-1])
end

def twice(int)
  double_double?(int) && int.to_s.length > 1 ? int : int * 2
end

puts twice(7)

puts twice(37) == 74
puts twice(44) == 44
puts twice(334433) == 668866
puts twice(444) == 888
puts twice(107) == 214
puts twice(103103) == 103103
puts twice(3333) == 3333
puts twice(7676) == 7676
puts twice(123_456_789_123_456_789) == 123_456_789_123_456_789
puts twice(5) == 10
