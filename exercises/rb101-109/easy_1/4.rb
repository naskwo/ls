vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']

# def count_occurrences(array)
#   result = Hash.new(0)
  
#   array.each do |element|
#     result[element] += 1
#   end

#   result.each do |k,v|
#     puts "#{k} => #{v}"
#   end

# end

def count_occurrences(array)
  occurrences = {}

  array.each do |element|
    occurrences[element] = array.count(element)
  end

  occurrences.each do |element, count|
    puts "#{element} => #{count}"
  end
end

count_occurrences(vehicles)