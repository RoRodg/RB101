#asks for two numbers
#asks for the type of operation to perform: add, subtract, multiply or divide
#displays the result

def prompt(message)
  puts "=> #{message}"
end

def valid_number?(number)
  number.to_i() != 0
end

def operation_to_message(operation)
  case operation
  when "1"
    "Adding"
  when "2"
    "Subtracting"
  when "3"
    "Multiplying"
  when "4"
    "Dividing"
  end
end

prompt("WELCOME TO THE CALCULATOR!!!")

name = ''

loop do
  prompt("What is your name?")
  name = Kernel.gets().chomp()
  if name.empty?()
    prompt("Please enter a name.")
  else break
  end
end

prompt("Welcome, #{name}.")

loop do #main loop

  num1 = "0"
  num2 = "0"

  loop do
    prompt("What is the first number?")
    num1 = Kernel.gets().chomp()
    if valid_number?(num1)
      break
    else
      prompt("That is not a valid number. Please enter a valid number.")
    end
  end

  loop do
  prompt("What is the second number?")
  num2 = Kernel.gets().chomp()
    if valid_number?(num2)
        break
    else
      prompt("That is not a valid number. Please enter a valid number.")
    end
  end

  operator_prompt = <<-MSG
  What is the operation to perform?
      1) add
      2) subtract
      3) multiply
      4) divide
  MSG

  prompt(operator_prompt)
  operation = ''

  loop do
    operation = Kernel.gets().chomp()
    if %w(1 2 3 4).include?(operation)
      break
    else
      prompt("Must choose 1, 2, 3 or 4")
    end
  end

prompt("#{operation_to_message(operation)} the two numbers...")

  result = case operation
           when "1"
             num1.to_i + num2.to_i
           when "2"
             num1.to_i - num2.to_i
           when "3"
             num1.to_i * num2.to_i
           when "4"
             num1.to_f / num2.to_f
           end

  prompt("The result is #{result}")

  prompt("Do you want to perform another calculation? (Type Y to perform another calculation)")
  answer = Kernel.gets().chomp()
  break unless answer.downcase.start_with?('y')
end #main loop

prompt("Thank you for using the calculator.")
