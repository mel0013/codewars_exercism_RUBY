#Return the number (count) of vowels in the given string.

#We will consider a, e, i, o, u as vowels for this Kata (but not y).

#he input string will only consist of lower case letters and/or spaces.

def getCount(inputStr)
  inputStr.count("aeiou")
end
