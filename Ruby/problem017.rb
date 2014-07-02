# Problem 17 - Number Letter Counts 

# If the numbers 1 to 5 are written out in words: one, two, three, four, five, then
# there are 3 + 3 + 5 + 4 + 4 = 19 letters used in the total.

# If all the numbers from 1 to 1000 (one thousand) inclusive were written out in 
# words, how many letters would be used?

# Note: Do not count hypens and spaces.  For example, 342 (three hundred and forty-two)
# comtains 23 letters and 115 (one hundred and fifteen) contains 20 letters. The
# use of "and" when writing out numbers in in compliance with British usage

require_relative('helper')

class Integer
    def inWords
    	return "one" if self == 1
    	return "two" if self == 2
    	return "three" if self == 3
    	return "four" if self == 4
    	return "five" if self == 5
    	return "six" if self == 6
    	return "seven" if self == 7
    	return "eight" if self == 8
    	return "nine" if self == 9
    end
end


#startTime = Time.now

#correctAnswer = 21124
#correctAnswer = "three thousand three hundred and forty-two"
#myAnswer = 3342.inWords

#endTime = Time.now

#printResultWithTimer(myAnswer, correctAnswer, startTime, endTime)
