puts ">> Please enter an integer greater than 0:"
int = gets.chomp.to_i

puts ">> Enter 's' to compute the sum or 'p' to compute the product."
operator = gets.chomp.downcase

puts  case operator
          when 's'
            result = (1..int).reduce(&:+)
            "The sum of the integers between 1 and #{int} is #{result}."
          when 'p'
            result = (1..int).reduce(&:*)
            "The product of the integers between 1 and #{int} is #{result}."
          else
            "Invalid choice. Exiting."
          end

