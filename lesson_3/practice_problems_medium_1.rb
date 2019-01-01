# Q1
10.times { |i| puts (" " * i)  + "The Flintstones Rock!" }

# Q2
puts "the value of 40 + 2 is " + (40 + 2).to_s

# Q3
def factors(number)
  divisor = number
  factors = []
  while divisor > 0
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end
  factors
end

# Q4

# Yes, there is a difference. The << method mutates the caller, whereas 
# buffer = input_array + [new_element] does not.

# Q5

# The limit variable is not visible inside the method scope.
# To fix it, I would alter the method to accept the limit parameter.

# Q6

# Refactor the method into 2 methods, eachreturning the updated input.

# --> Clever programmers don't write "clever" code. They write explicit code that is easy to read, debug and modify as the requirements change.

# Q7

# The variable "answer" is not updated


