require 'pry'

separator = "*" * 80

def format_with_separator(number)
  whole, decimal = number.to_s.split(".")
  decimal = decimal.slice(0,2).ljust(2,'0') unless decimal.nil?
  whole_with_commas = whole.chars.to_a.reverse.each_slice(3).map(&:join).join(",").reverse
  [whole_with_commas, decimal].compact.join(".")
  # binding.pry
end

def calculate_monthly_payment(amount,apr,years)
  monthly_interest = apr / 100.0 / 12.0
  months = years * 12.0

  if apr > 0
    amount * (monthly_interest / (1 - (1 + monthly_interest)**(-months)))
  else
    amount / months
  end

end

def valid_number?(number)
  number.to_s.match?(/(^[+-]?(?:0|[1-9]\d*)(?:\.(?:\d*[1-9]|0))?)$/)
  # binding.pry
end

loop do

  puts separator

  puts "Welcome to Nate's loan calculator".center(80)

  puts separator

  puts ">> Please enter the loan amount in $, digits only (e.g. 10000)"

  loan_amount = ''

  loop do
    loan_amount = gets.to_i
    break if valid_number?(loan_amount) && loan_amount > 0
    puts ">> Please enter valid loan amount (e.g. 100000), greater than zero"
  end

  puts "You entered $#{format_with_separator(loan_amount)}.\n>> Please enter the Annual Percentage Rate (APR) without the \% sign\n(e.g. 5) or 0 if this is an interest-free loan."

  apr = ''
  loop do
    apr = gets.to_i
    break if apr >= 0
    puts ">> Please enter valid APR (e.g. 5.5) or 0 if this is an interest-free loan."
  end

  puts "You entered #{apr}%.\n>>Please enter the loan duration in years, (e.g. 5)"

  loan_duration_years = ""
  loop do
    loan_duration_years = gets.to_i
    break if valid_number?(loan_duration_years) && loan_duration_years > 0
    puts ">> Please enter the loan duration in years, (e.g. 5)"
  end

  loan_duration_months = loan_duration_years * 12

  puts "The monthly interest that you owe for your loan of:\n$#{format_with_separator(loan_amount)} at an APR of #{apr}\% for #{loan_duration_years} years (#{loan_duration_months} months) is:"
  puts separator
  puts "$#{format_with_separator(calculate_monthly_payment(loan_amount,apr,loan_duration_years))}".center(80)
  puts separator

  puts ">> Would you like to calculate another amount? Y(es) or N(o)"

  break unless gets.chomp.downcase[0] == 'y'

end
