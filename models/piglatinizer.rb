class PigLatinizer 
    
     def piglatinize(word)
        words = word.split(" ")
        words.map do |word|
        
        piglatinize_word(word)
        end.join(" ")
    end
    def piglatinize_word(word)
        vowels = word.match(/^[^AEIOUaeiou]+/)
        
        if vowels
        vowels = vowels[0]
        consonants = word[vowels.length..-1]
        "#{consonants}#{vowels}ay"
        else
        "#{word}way"
        end
    end  
end 