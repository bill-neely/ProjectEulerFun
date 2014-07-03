# Problem 17 - Number Letter Counts 

# If the numbers 1 to 5 are written out in words: one, two, three, four, five, then
# there are 3 + 3 + 5 + 4 + 4 = 19 letters used in the total.

# If all the numbers from 1 to 1000 (one thousand) inclusive were written out in 
# words, how many letters would be used?

# Note: Do not count hypens and spaces.  For example, 342 (three hundred and forty-two)
# comtains 23 letters and 115 (one hundred and fifteen) contains 20 letters. The
# use of "and" when writing out numbers in in compliance with British usage

require_relative('helper')
require('net/http')

ENV['http_proxy'] = 'http://72.37.249.115:8080'

class Integer
    def inWords
    	url = "http://www.dataaccess.com/webservicesserver/numberconversion.wso/NumberToWords/JSON?ubiNum=#{self}"
    	puts Net::HTTP
		resp = Net::HTTP.get_response(URI.parse(url)) # get_response takes an URI object
		return resp.body
    	#return toEnglish(self)
    end
end

def toEnglish (number)
	return "one" if number == 1
   	return "two" if number == 2
   	return "three" if number == 3
  	return "four" if number == 4
   	return "five" if number == 5
   	return "six" if number == 6
   	return "seven" if number == 7
   	return "eight" if number == 8
   	return "nine" if number == 9
   	return "ten" if number == 10
   	return "eleven" if number == 11
   	return "twelve" if number == 12
   	return "thirteen" if number == 13
   	return "fourteen" if number == 14
   	return "fifteen" if number == 15
   	return "sixteen" if number == 16
   	return "seventeen" if number == 17
   	return "eightteen" if number == 18
   	return "nineteen" if number == 19
   	return "twenty" if number == 20
   	return "thirty" if number == 30
   	return "forty" if number == 40
   	return "fifty" if number == 50
   	return "sixty" if number == 60
   	return "seventy" if number == 70
   	return "eighty" if number == 80
   	return "ninety" if number == 90
end


puts "starting call"
puts 23.inWords
puts "finished call"
#startTime = Time.now

#correctAnswer = 21124
#correctAnswer = "three thousand three hundred and forty-two"
#myAnswer = 3342.inWords

#endTime = Time.now

#printResultWithTimer(myAnswer, correctAnswer, startTime, endTime)
