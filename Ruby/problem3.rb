# projecteuler.net
# code.google.com/p/projecteuler-solutions/wiki/ProjectEulerSolutions

# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143 ?

require_relative 'helper'
require 'prime'

def primeFactors(number)
    #puts "primefactors main - number = #{number}"
    return [number] if number == 1
    return [number] if Prime.prime?(number)
    max = (number / 2).to_i + 1
	(2..max).each { |i| 
        if number % i == 0
            #puts "primefactors if - i = #{i}"
            return [primeFactors(i), primeFactors(number / i)].flatten.uniq
        end
    }
end

correctAnswer = 6857
myAnswer = primeFactors(600851475143).max
printResult(myAnswer, correctAnswer)

