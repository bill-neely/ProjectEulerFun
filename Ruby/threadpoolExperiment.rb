
require 'prime'
# Thread is a gem that limits the number of concurrent threads 
#   thread-1.1.4.gem 
#   https://rubygems.org/gems/thread
require 'thread/pool'
require_relative 'helper'

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

startTime = Time.now

poolsize = 100
limit = 1000
pool = Thread.pool(poolsize)  

puts "Creating #{limit} threads with pool size of #{poolsize}"
results = []

limit.times do |i|
    #puts "spawn #{i}"
    pool.process {
        #sleep((rand(0) * 3).to_i)
        number = (rand(0) * 100000000000).to_i
        number = 13915748367
        results.push("Thread#{i} : PrimeFactors(#{number} = #{primeFactors(number)}.")
    }
end

puts "Wait for shutdown"
pool.shutdown

endTime = Time.now

#puts results
puts puts "Pool size of #{poolsize} with #{limit} tasks took #{time_diff_milli(startTime, endTime)} milliseconds"

