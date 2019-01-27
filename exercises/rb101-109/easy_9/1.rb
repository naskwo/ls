def greetings(arr_name, hsh_title)
  name = arr_name.join(' ')
  title = hsh_title.values.join(' ')
  puts %(Hello, #{name}! Nice to have a #{title} around.)
end

greetings(%w(Michael X Banana), title: 'Master', occupation: 'Plumber')
# => Hello, John Q Doe! Nice to have a Master Plumber around.
