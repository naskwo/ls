# Q3

# A
# One is one
# Two is two
# Three is three

# B
# One is one
# Two is two
# Three is three

# C
# One is two
# Two is three
# Three is one

def is_an_ip_number?(input)
  true
end 

def dot_separated_ip_address?(input_string)
  
  dot_separated_words = input_string.split(".")

  return false unless dot_separated_words.size == 4

  while dot_separated_words.size > 0 do
    word = dot_separated_words.pop
    return false unless is_an_ip_number?(word)
  end
  
  true
end

# Should return true
p dot_separated_ip_address?("1.1.1.1")
p dot_separated_ip_address?("100.100.100.100")

# Should return false
p dot_separated_ip_address?("1.1.1")
p dot_separated_ip_address?("1.1")
p dot_separated_ip_address?("1.1.")
p dot_separated_ip_address?("256.256.1.1")
