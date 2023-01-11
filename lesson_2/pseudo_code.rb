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

# a method that determines the index of the 3rd occurrence of a given character
# in a string. For instance, if the given character is 'x' and the string is
# 'axbxcdxex', the method should return 6 (the index of the 3rd 'x'). If the
# given character does not occur at least 3 times, return nil.

# a method that takes two arrays of numbers and returns the result of merging the
# arrays. The elements of the first array should become the elements at the even
# indexes of the returned array, while the elements of the second array should
# become the elements at the odd indexes. For instance:
