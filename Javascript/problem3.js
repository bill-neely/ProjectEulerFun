//# projecteuler.net
//# code.google.com/p/projecteuler-solutions/wiki/ProjectEulerSolutions

//# The prime factors of 13195 are 5, 7, 13 and 29.
//# What is the largest prime factor of the number 600851475143 ?

var fastIsPrime = function (number)   {    
    if (number == 1 )
        return false;
    
    if (number > 3 && (number % 2 == 0 || number % 3 == 0))
        return false;
    //# we can now avoid to consider multiples 
    //# of 2 and 3. This can be done really simply 
    //# by starting at 5 and incrementing by 2 and 4 
    //# alternatively, that is: 
    //# 5, 7, 11, 13, 17, 19, 23, 25, 29, 31, 35, 37, ... 
     divisor = 5;
     increment = 2;
     maxDivisor = parseInt(Math.sqrt(number)) + 1;  //# we don't need to go higher than the square root of the number 
  	 while (divisor <= maxDivisor) {
        	if (number % divisor == 0) 
                return false;
            divisor = divisor + increment ;
            increment = 6 - increment; // this modifies 2 into 4 and viceversa 
        }
  
        // if we get here, the number is prime 
     return true
}

var primeFactors = function (number) {
    if (fastIsPrime(number)) {
        return [number]
    }
    max = parseInt(number / 2) + 1
    for (var i = 2; i <= max; i++) {
      if (number % i == 0) {
        return (primeFactors(i), primeFactors(number / i))
      }   
  }
}

correctAnswer = 6857;
myAnswer = primeFactors(600851475143)
var helper = require('./helper')
helper.printResult(myAnswer, correctAnswer);

