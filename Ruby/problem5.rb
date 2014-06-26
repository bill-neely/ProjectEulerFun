# projecteuler.net
# code.google.com/p/projecteuler-solutions/wiki/ProjectEulerSolutions

# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

require_relative 'helper'

def findDivisibleBy(range)
    number = 1
    stillLooking = true
    while stillLooking
        stillLooking = false
        range.each { |i| 
            if number % i != 0
                number += 1
                stillLooking = true
                break
            end  
        }
    end
    number
end

startTime = Time.now
correctAnswer = 232792560
myAnswer = findDivisibleBy(1..20)
endTime = Time.now
printResultWithTimer(myAnswer, correctAnswer, startTime, endTime)

