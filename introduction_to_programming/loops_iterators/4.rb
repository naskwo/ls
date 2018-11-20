def count_down(num)
  puts num
  count_down(num-1) unless num <= 0
end

count_down 99
