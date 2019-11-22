class PigLatinizer

    def piglatinize(text)
        words = text.split(" ")
        ret = ""
    
        words.each do |word|
            move = ""
            grab = true

            while grab
                if word && !isVowel(word[0])
                    move = "#{move}#{word[0]}"
                    word[0] = ""
                else
                    grab = false 
                end 
            end
    
            if move == ""
                move = "w"
            end
    
            piglatinization = "#{word}#{move}ay"
    
            if ret == ""
                ret = piglatinization
            else
                ret = "#{ret} #{piglatinization}"
            end
        end
    
        ret
    end 
    
    def isVowel(char)
        char == "a" || char == "e" || char == "i" || char == "o" || char == "u" || char == "A" || char == "E" || char == "I" || char == "O" || char == "U"
    end
end 