# projecteuler.net
# code.google.com/p/projecteuler-solutions/wiki/ProjectEulerSolutions

# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143 ?

require_relative 'helper'
require 'prime'

def isPrime?(number)  
    
    if number == 1 
        return false
    end
    
    if (number > 3 && (number % 2 == 0 || number % 3 == 0))
        return false
    end
    # we can now avoid to consider multiples 
    # of 2 and 3. This can be done really simply 
    # by starting at 5 and incrementing by 2 and 4 
    # alternatively, that is: 
    # 5, 7, 11, 13, 17, 19, 23, 25, 29, 31, 35, 37, ... 
     divisor = 5
     increment = 2
     # we don't need to go higher than the square 
     # root of the number 
     maxDivisor = Math.sqrt(number).to_i + 1
  
        until divisor > maxDivisor 
            if number % divisor == 0 
                return false
            end
            divisor = divisor + increment 
            # this modifies 2 into 4 and viceversa 
            increment = 6 - increment 
        end
  
        # if we get here, the number is prime 
     return true
    
end

def primeFactors(number)
	(1..number).select{ |i| isPrime?(i) }.select{ |i| number % i == 0 && Prime.prime?(i) }
end



correctAnswer = 6857
myAnswer = primeFactors(600851475143).max
printResult(myAnswer, correctAnswer)

