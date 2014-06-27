# Factorial Digit Sum

# n! means n * (n-1) * ... * 3 * 2 * 1
# for example 10! = 10 * 9 * 8 * ... * 2 * 1 = 3628800
# the sume of the digits in 10! = 3 + 6 + 2 + 8 + 8 + 0 + 0 = 27
# Find the sun of the digits in 100!

require_relative 'helper'

class Integer 
    def !
        (1..self).inject(:*) || 1     
    end
    
    def sumDigits
        self.to_s.split('').map{ |i| i.to_i }.reduce(:+)
    end
end

startTime = Time.now

correctAnswer = 648
myAnswer = 100.!.sumDigits

endTime = Time.now

printResultWithTimer(myAnswer, correctAnswer, startTime, endTime)

