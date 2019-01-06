# P1
flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

hash = {}

flintstones.each_with_index do |name,i|
  hash[name] = i  
end

# p hash

# P2

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

sum = 0

ages.values.each { |n| sum += n }

# p sum
# p ages.values.inject(:+)

# P3

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
# p young = ages.select { |_,v| v < 100 }
# p young = ages.keep_if { |_,v| v < 100 }

# P4

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
# p ages.values.min

# P5

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
# p result = flintstones.index {|x| x[0,2] == "Be"} 

# P6

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# p flintstones.map! {|name| name[0,3] }

# P7

statement = "The Flintstones Rock"

hash = Hash.new(0)

statement.split('').each do |letter|
  hash[letter] += 1 unless letter == ' '
end

# p hash

result = {}
letters = ('A'..'Z').to_a + ('a'..'z').to_a
letters.each do |letter|
  letter_frequency = statement.scan(letter).count
  result[letter] = letter_frequency if letter_frequency > 0
end

# p result

# P8

# #each returns the original collection. However, in this case, the receiver was mutated and the collection is empty.
# 

# P9

words = "the flintstones rock"

def titleize(str)
  str.split.map { |word| word.capitalize }.join(' ')
end

# p titleize(words)

# P10

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each do |k,v|
  v["age_group"] = case v['age']
    when 0..17
      'kid'
    when 17..64
      'adult'
    else
      'senior'
    end
end

p munsters