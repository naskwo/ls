def staggered_case(string,start_with:1)
  output = ''
  if start_with == 1
    even_method, odd_method = :upcase, :downcase
  else
    even_method, odd_method = :downcase, :upcase
  end

  string.chars.each_with_index do |char,i|
    output << if i.even?
                char.send(even_method)
              else
                char.send(odd_method)
              end
  end
  output
end


puts staggered_case('I Love Launch School!',start_with: 1) == 'I LoVe lAuNcH ScHoOl!'
puts staggered_case('ALL_CAPS',start_with: 0) == 'aLl_cApS'
puts staggered_case('ignore 77 the 444 numbers',start_with: 1) == 'IgNoRe 77 ThE 444 NuMbErS'