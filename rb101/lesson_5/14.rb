hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

# arr = []
# hsh.each do |k,v|
#   arr << v[:colors].map(&:capitalize) if v[:type] == 'fruit'
#   arr << v[:size].upcase if v[:type] == 'vegetable'
# end

# p arr

new = hsh.map do |_,value|
  if value[:type] == 'fruit'
    value[:colors].map(&:capitalize)
  elsif value[:type] == 'vegetable'
    value[:size].upcase
  end
end

p new
