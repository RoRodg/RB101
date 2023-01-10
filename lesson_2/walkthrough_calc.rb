#asks for two numbers
#asks for the type of operation to perform: add, subtract, multiply or divide
#displays the result
def calculator
  print "First number: "
  num1 = gets.chomp.to_i

  print "Second number: "
  num2 = gets.chomp.to_i

  print "Operation to perform (+, -, *, /): "
  operation = gets.chomp

  if operation == "+"
    puts num1 + num2
  elsif operation == "-"
    puts num1 - num2
  elsif operation == "*"
    puts num1 * num2
  else
    puts num1 / num2
  end
end
calculator
