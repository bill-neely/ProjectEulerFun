# projecteuler.net
# code.google.com/p/projecteuler-solutions/wiki/ProjectEulerSolutions

# A palindromic number reads the same both ways. 
# The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

#Find the largest palindrome made from the product of two 3-digit numbers.

require_relative 'helper'

def findPalindromes(min, max)
    arr = (min..max).to_a
    combos = arr.product(arr)
    products = combos.map{ |i| i[0] * i[1]}
    palindromes = products.select{ |i| i.to_s == i.to_s.reverse }
end

correctAnswer = 906609
myAnswer = findPalindromes(100,999).max
printResult(myAnswer, correctAnswer)

