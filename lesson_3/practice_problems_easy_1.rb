# Q1
# Answer
# The same value as in line 1, as uniq without a "!" does not mutate the caller.

# puts -> #.to_s
# p -> #.inspect

# Q2
# Answer
# ! (bang) is used to indicate a method that mutates the caller.
# ? is used to indicate a predicate method, that returns true or false.

# 1. != -> not equal
# 2. !user_name -> turn any object into the opposite of the boolean equivalent
# 3. words.uniq! -> modify the caller
# 4. ? before something -> syntax error
# 5. ? after something -> depends if there is a method with this name
# 6. !! -> turn any object into their boolean equivalent

# Q3

advice = "Few things in life are as important as house training your pet dinosaur."
# puts advice.sub(/important/, "urgent")
advice.gsub!('important', 'urgent')

# Q4

# Line 1: deletes element at position [1]
# Line 2: deletes element with value 1 (i.e. position [0])
# #.delete_at and #.delete mutate the caller

# Q5
# (10..100).include? 42
(10..100).cover? 42

# Q6
famous_words = "seven years ago..."
famous_words.prepend "Four score and "
famous_words.insert(0,"Four score and ")
"Four score and " + famous_words
"Four score and " << famous_words

# Q7

# Methods are evaluated from inner parentheses to outer parentheses.
# For 5 iterations, this gives 10 -> 18 -> 26 -> 34 -> 42 
# The answer is 42

# Q8

flintstones.flatten!

