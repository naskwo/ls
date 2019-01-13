# require 'pry'

# def joinor(arr, delimiter = ', ', end_word = 'or')
#   output = ''
#   arr.each_with_index do |e, i|
#     if i == arr.size - 1
#       output << "#{end_word} "
#       output << e.to_s
#     else
#       output << e.to_s
#       if arr.size == 2
#         output << ' '
#       else
#         output << delimiter
#       end
#     end
#   end
#   output
# end

def joinor(arr, delimiter=', ', word='or')
  case arr.size
  when 0 then ''
  when 1 then arr.first
  when 2 then arr.join(" #{word} ")
  else
    arr[-1] = "#{word} #{arr.last}"
    arr.join(delimiter)
  end
end


# Examples
p joinor([1, 2])                   # => "1 or 2"
p joinor([1, 2, 3])                # => "1, 2, or 3"
p joinor([1, 2, 3], '; ')          # => "1; 2; or 3"
p joinor([1, 2, 3], ', ', 'and')   # => "1, 2, and 3"
