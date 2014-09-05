# The prime 41 can be written as the sum of six consecutive primes
#    41 = 2 + 3 + 5 + 7 + 11 + 13
#
# This is the longest sum of consecutive primes that add to a prime below one-hundred
#
# The longest sum of consecutive primes below one-thousand that adds to a prime, contains 21
#  terms and is equal to 953.
#
# Which prime, below one-million, can be written as the sum of the most consecutive primes?

require_relative 'helper'
require 'prime'

startTime = Time.now

correctAnswer = 78498 # number of primes below 1000000
limit = 1000000
puts "Primes under #{number_with_commas(limit)}"
primes = Prime.each(limit).to_a
myAnswer = primes.length

endTime = Time.now

printResultWithTimer(myAnswer, correctAnswer, startTime, endTime)