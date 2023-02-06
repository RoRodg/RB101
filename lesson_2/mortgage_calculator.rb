def prompt(message)
  puts "=> #{message}"
end

def valid_number?(number)
  number.to_f != 0
end

puts "WELCOME TO THE MORTGAGE CALCULATOR!!!"
puts "This calculator will calculate your monthly mortgage payment."

loop do # MAIN LOOP
  loan_amount = 0
  loop do
    prompt("What is the total loan amount?")
    loan_amount = gets.chomp.to_f
    if valid_number?(loan_amount)
      break
    else
      puts "Please enter a valid number."
    end
  end

  loan_duration_months = 0
  loop do
    prompt("What is the loan duration? (in years)")
    loan_duration_years = gets.chomp.to_i
    loan_duration_months = loan_duration_years * 12
    if valid_number?(loan_duration_months)
      break
    else
      puts "Please enter a valid number."
    end
  end

  monthly_interest_decimal = 0
  loop do
    prompt("What is the Annual Percentage Rate?")
    annual_percentage = gets.chomp.to_f
    monthly_interest_percentage = annual_percentage / 12
    monthly_interest_decimal = monthly_interest_percentage / 100
    if valid_number?(monthly_interest_decimal)
      break
    else
      puts "Please enter a valid number."
    end
  end

  monthly_payment =
    loan_amount * (monthly_interest_decimal /
    (1 - (1 + monthly_interest_decimal)**(-loan_duration_months)))

  puts "Your monthly payment will be $#{monthly_payment.round(2)}"

  answer = ""
  loop do
    prompt("Do you want to calculate another loan? (y/n)")
    answer = gets.chomp.downcase
    unless answer == "y" || answer == "n"
      puts "Please enter 'y' or 'n'"
    else break
    end
  end

  break if answer == "n"
end # MAIN LOOP

puts "THANK YOU FOR USING MY MORTGAGE CALCULATOR!!! GOODBYE!"
