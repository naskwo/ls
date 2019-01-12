munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

# Get all males

# males = munsters.select { |k,v| v['gender'] == 'male' }

# age_sum = 0
# males.each do |m|
#   age_sum += m[1]["age"]
# end

# p age_sum

total_male_age = 0

munsters.each_value do |details|
  total_male_age += details["age"] if details["gender"] == "male"
end

puts total_male_age
