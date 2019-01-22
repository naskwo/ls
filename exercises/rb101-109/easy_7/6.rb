

# def staggered_case(string,start_with:1)
#   output = ''
#   if start_with == 1
#     even_method, odd_method = :upcase, :downcase
#   else
#     even_method, odd_method = :downcase, :upcase
#   end

#   i = 0
#   string.chars.each do |char|
#     if ( i.even? && char =~ /[a-z]/i )
#       output << char.send(even_method)
#       i += 1
#     elsif ( i.odd? && char =~ /[a-z]/i )
#       output << char.send(odd_method)
#       i += 1
#     else
#       output << char
#     end
#   end
#   output
# end

puts staggered_case('I Love Launch School!', start_with: 1)

puts staggered_case('I Love Launch School!', start_with: 1) == 'I lOvE lAuNcH sChOoL!'
puts staggered_case('ALL CAPS', start_with: 1) == 'AlL cApS'
puts staggered_case('ignore 77 the 444 numbers', start_with: 1) == 'IgNoRe 77 ThE 444 nUmBeRs'