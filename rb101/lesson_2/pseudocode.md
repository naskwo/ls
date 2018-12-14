## a method that returns the sum of two integers

### informal

Given two integers.
Add one integer to the other integer.
Return the value.

### formal

START

PRINT Enter an integer
GET integer_1

PRINT Enter another integer
GET integer_2

SET sum = integer_1 + integer_2

PRINT sum

END


## a method that takes an array of strings, and returns a string that is all those strings concatenated together

### informal

Given an array of strings.

Create a new string variable to hold the concatenated values.

Loop through the array and append each string at that index position to the new string variable.

### formal

START

SET iterator = 1
SET strings_concat = empty

WHILE iterator <= size of strings array
  SET strings_concat += value at current array position plus an optional delimiter
  SET iterator += 1

END

## a method that takes an array of integers, and returns a new array with every other element

## informal

Given an array of integers.
Loop through the array and return each element when the index position is divided by 2, the remainder is 0.

## formal

START

SET integers = array
SET iterator = 0

WHILE iterator <= size of integers
  if iterator % 2 == 0
    PRINT current element
  
  SET iterator += 1

END







