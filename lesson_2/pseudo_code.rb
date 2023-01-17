START	start of the program
SET	sets a variable we can use for later
GET	retrieve input from user
PRINT	displays output to user
READ	retrieve value from variable
IF / ELSE IF / ELSE	show conditional branches in logic
WHILE	show looping logic
END	end of the program

#a method that returns the sum of two integers

# Given two intergers
# -add them together
# -return the result

START
# Given two integers called "num1" and "num2"
SET result = num1 + num2
RETURNS result
END

def sum(num1, num2)
  num1 + num2
end

-------------------------------------------------------------------------------

#a method that takes an array of strings, and returns a string that is all those
#strings concatenated together

#plain English
#Given an array of strings called "words"
Iterate through the collection one by one
 - save the current value to a string called "sentence"
 - add a space
 - move to the next value until the array length is reached
 - return sentence after array length is reached

#pseudocode
START
#Given an array of strings called "words"
SET sentence = empty string
SET iterator = 1

WHILE interator is <= length of words
  SET word = value within words collection at space "iterator"
  SET sentence = sentence + word + a space
  IF iterator = length of words
    return sentence
  ELSE
    iterator += 1
END

#code
def sentence(words)
  sentence = ""
  words.each do |word|
    until
    sentence = sentence + word + " "
  end
  sentence.to_s
end

-------------------------------------------------------------------------------

#a method that takes an array of integers, and returns a new array with every
#other element from the original array, starting with the first element.

#plain English
#Given a collection of integers
Iterate through the collection
  - starting with the first value,
    add every other value to a new collection
  - return the new collection

#pseudocode
START
#Given a collection of integers called "numbers"
SET iterator = 1
SET new_array = empty
WHILE iterator <= length of numbers
  SET value = the value at the index number of the space "iterator"
  SET index = the index number of the value at the space "iterator"
  IF the index is an odd number
    skip to the next iteration
  ELSE
    SET new_array = new_array plus value added to the collection
  interaotry +=1
READ new_array
END

#code
def every_other(numbers)
  new_array = []
  numbers.each_with_index do |value, index|
    if index.odd?
      next
    else
      new_array << value
    end
  end
  new_array
end

-------------------------------------------------------------------------------

# a method that determines the index of the 3rd occurrence of a given character
# in a string. For instance, if the given character is 'x' and the string is
# 'axbxcdxex', the method should return 6 (the index of the 3rd 'x'). If the
# given character does not occur at least 3 times, return nil.

#plain English
Given a string.
Split the string into a collection of separate characters.
Iterate through each character in the collection
  -Set a character_count to 0.
  -Check to see if the character is unique in the collection.
    -If it is, continue to the next iteration.
    -Else, store the character and add 1 to the character_count
  -Compare the stored number to the next character in the collection.
    -If it is the same, add 1 to the character_count
    -Else continue to the next character and compare.
  When the character_count is 3, store the index position of the character
  and exit the loop.
  If character count is not 3 after iterating through the characters, return nil.
Return the index position of the third character.

#formal pseudocode


-------------------------------------------------------------------------------

# a method that takes two arrays of numbers and returns the result of merging the
# arrays. The elements of the first array should become the elements at the even
# indexes of the returned array, while the elements of the second array should
# become the elements at the odd indexes. For instance:

