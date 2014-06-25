def printResult(myAnswer, correctAnswer)
	puts
	if myAnswer == correctAnswer
		puts "I found the correct answer of #{myAnswer}"
	else
		puts "I found the incorrect answer of #{myAnswer}.  It should be #{correctAnswer}"
	end
	puts
end