print "Enter a number between 0 and 100: "
num = gets.chomp.to_i

def check_num(num)

   puts case num
    when 0..50
      "#{num} is between between 0 and 50"
    when 51..100
      "#{num} is between between 51 and 100"
    else
      if num < 0
        "You can't enter a negative number"
      else
        puts "#{num} is above 100"
      end
    end

end

check_num(num)
