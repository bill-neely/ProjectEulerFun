def pinValue(index, rolls)
    if rolls[index] == "X"
        return 10
    elsif rolls[index] == "/"
        return 10 - pinValue(index - 1, rolls)
    else
        return rolls[index]
    end
end

def calculateScore(rolls)
    frame = 0
    score = 0
    rolls.each_index {|index|
        if rolls[index] == "X"
            score += pinValue(index, rolls) + pinValue(index + 1, rolls) + pinValue(index + 2, rolls)
            frame += 1
        elsif rolls[index] == "/"
            score += pinValue(index, rolls) + pinValue(index + 1, rolls)
            frame += 0.5
        else
            score += pinValue(index, rolls)
            frame += 0.5
        end
        if frame == 10 
            break
        end
    }
    return score
end

game173 = [3,1, 4,"/", 5,"/", 2,"/", "X", "X", 8,0, "X", "X", 8,"/","X"]
game115 = [ 'X', 'X', 'X', 0, 9, 'X', 0, 0, 1, 4, 'X', 0, 2, 3, 5 ]
game300 = [ 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X' ]
game81 = [ 9, 0, 'X', 0, 0, 4, 2, 'X', 2, 3, 6, 3, 1, 2, 'X', 3, 4 ]
game94 = [ 9, '/', 3, 5, 0, '/', 4, 2, 5, 0, 2, '/', 6, 3, 1, 2, 7, '/', 3, 4 ]
game60 = [ 9, 0, 3, 5, 0, 0, 4, 2, 5, 0, 2, 3, 6, 3, 1, 2, 7, 1, 3, 4 ]

puts calculateScore(game173).to_s
