
def every_other(numbers)
  new_array = [numbers[0]]
  numbers.each_with_index do |value, index|
    if index.odd?
      next
    else
      new_array << value
    end
  end
p new_array
end

p every_other([1, 2, 3, 4, 5])

# numbers = [1, 2, 3, 4, 5]

# new_array = [numbers[0]]

# p numbers
# puts
# p new_array
# puts
# numbers.each_with_index do |value, index|
#   puts "#{index}: #{value}."
# end


