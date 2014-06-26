def time_diff_milli(start, finish)
   (finish - start) * 1000.0
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
		puts "I found the correct answer of #{myAnswer} in #{time_diff_milli(startTime, endTime)} milliseconds"
	else
		puts "I found the incorrect answer of #{myAnswer}.  It should be #{correctAnswer}. It took #{time_diff_milli(startTime, endTime)} milliseconds"
	end
	puts
end