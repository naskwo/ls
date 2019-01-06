produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}


# def select_fruit(produce_hash)
#   fruit = {}

#   produce_hash.each do |k,v|
#     fruit[k] = v if v == 'Fruit'
#   end

#   fruit
# end

def select_fruit(produce_list)
  keys = produce_list.keys
  counter = 0
  fruits = {}

  loop do
    break if counter == keys.size
    current_key = keys[counter]
    current_val = produce_list[current_key]
    fruits[current_key] = current_val if current_val == 'Fruit'
    counter += 1
  end

  fruits
end

p select_fruit(produce)