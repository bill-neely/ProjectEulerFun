def time_diff_in_seconds(start, finish)
   '%.2f' % (finish - start) 
end


def time_diff_in_milliseconds(start, finish)
   '%.2f' % ((finish - start) * 1000)  
end

def number_with_commas(number)
	number.to_s.reverse.gsub(/(\d{3})(?=\d)/, '\\1,').reverse
end

def printResult(myAnswer, correctAnswer)
	puts
	if myAnswer == correctAnswer
		puts "I found the correct answer of #{myAnswer}"
	else
		puts "I found the incorrect answer of #{myAnswer}.  It should be #{correctAnswer}."
	end
	puts
end

def printResultWithTimer(myAnswer, correctAnswer, startTime, endTime)
	puts
	if myAnswer == correctAnswer
		puts "I found the correct answer of #{myAnswer} in #{time_diff_in_seconds(startTime, endTime)} seconds"
	else
		puts "I found the incorrect answer of #{myAnswer}.  It should be #{correctAnswer}. It took #{time_diff_in_seconds(startTime, endTime)} seconds"
	end
	puts
end