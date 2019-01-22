def show_multiplicative_average(arr)
  avg = arr.reduce(&:*)/arr.size.to_f
  puts %(The result is #{sprintf("%.3f", avg)})
end

show_multiplicative_average([3, 5])
show_multiplicative_average([6])
show_multiplicative_average([2, 5, 7, 11, 13, 17])