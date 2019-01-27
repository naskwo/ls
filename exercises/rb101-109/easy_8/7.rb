def fizzbuzz(start_num = 0, end_num = 0)
  output = []
  (start_num..end_num).to_a.each do |num|
    output << case
    when (num % 3 == 0 && num % 5 == 0)
      'FizzBuzz'
    when num % 3 == 0
      'Fizz'
    when num % 5 == 0
      'Buzz'
    else
      num
    end
  end
  puts output.join(', ')
end

fizzbuzz(1, 15)
