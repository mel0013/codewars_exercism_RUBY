# Given an array of integers, find the one that appears an odd number of times.

# There will always be only one integer that appears an odd number of times.
# Examples

# [7] should return 7, because it occurs 1 time (which is odd).
# [0] should return 0, because it occurs 1 time (which is odd).
# [1,1,2] should return 2, because it occurs 1 time (which is odd).
# [0,1,0,1,0] should return 0, because it occurs 3 times (which is odd).
# [1,2,2,3,3,3,4,3,3,3,2,2,1] shold return 4, because it appears 1 time (which is odd).


# create new array with filtered integers
# iterate through the array
# how many times has it occured?
# If its odd, return value


# use detect
def find_it(seq)
   seq.detect { |num| seq.count(num).odd? }
end

# you can also use .find ennumerator
def find_it(seq)
  seq.find{|c| seq.count(c).odd? }
end
