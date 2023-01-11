#ask the user for two numbers
#ask the user for an operator
#perform the operation
#output the results

Kernel.puts("Welcome to The Calculator!")
puts
Kernel.print("What is the first number?: ")
number_1 = Kernel.gets().chomp()

Kernel.puts("The number is: #{number_1}!")

Kernel.print("What is the second number?: ")
number_2 = Kernel.gets().chomp()

Kernel.puts("The number is: #{number_2}!")

Kernel.puts(number_1 + " " + number_2)
