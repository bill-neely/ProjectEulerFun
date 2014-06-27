
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

limit = 100
puts "Creating #{limit} threads"
threads = []
limit.times do |i|
    #puts "spawn #{i}"
    threads << Thread.new {
        #sleep((rand(0) * 60).to_i)
        number = (rand(0) * 100000000000).to_i
        result = "Thread#{i} : PrimeFactors(#{number} = #{primeFactors(number)}."
        #puts result
    }
end

puts "Starting join"

threads.each{ |t|
    t.join 
    puts t.value 
}

#puts threads[1].methods
#puts threads[1].value


#printResult(myAnswer, correctAnswer)
