# Count the number of Duplicates

# Write a function that will return the count of distinct case-insensitive alphabetic characters and numeric digits that occur more than once in the input string. The input string can be assumed to contain only alphabets (both uppercase and lowercase) and numeric digits.

# "abcde" -> 0 # no characters repeats more than once

def duplicate_count(text)
  array = text.downcase.chars
  array.uniq.count { |n| array.count(n) > 1}
end

# create an array (.chars) that's case insenstive (.downcase)
# count (.count) the unique values (.uniq)
# iterate - if the unique value appears more than once (array.count(n) > 1)
