
def every_other(array)
  new_array = []
  array.each_with_index do |value, index|
    if index.odd?
      next
    else
      new_array << value
    end
  end
  new_array
end

p every_other([1, 2, 3, 4, 5])

p every_other([2, 4, 6, 8, 10])

p every_other([1, 3, 7, 4, 9, 6])
