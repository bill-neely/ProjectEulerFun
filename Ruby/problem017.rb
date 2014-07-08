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

class Integer
    def inWords
    	url = "http://www.dataaccess.com/webservicesserver/numberconversion.wso/NumberToWords/JSON?ubiNum=#{self}"
		resp = Net::HTTP.get_response(URI.parse(url)) # get_response takes an URI object
		return resp.body
    end
end

startTime = Time.now

correctAnswer = 21124
words = (1..1000).map{ |i| i.inWords.gsub(/[^a-zA-Z]/, '').length }
myAnswer = words.reduce(:+)

endTime = Time.now

printResultWithTimer(myAnswer, correctAnswer, startTime, endTime)
