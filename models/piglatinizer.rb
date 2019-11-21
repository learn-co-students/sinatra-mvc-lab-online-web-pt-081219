require 'pry'

class PigLatinizer

    def piglatinize (phrase)
        if phrase.split(" ") == 1
            piglatinize_word(word)
        else
        words = phrase.split(" ")
        words.map do |word|
            piglatinize_word(word)
        end.join(" ")
    end
   
     end
    
     def piglatinize_word(word)

        vowels = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]

        if vowels.include?(word[0])
            word + "way"
        elsif !vowels.include?(word[0]) && !vowels.include?(word[1]) && !vowels.include?(word[2])
            word = word.slice(3..-1) + word.slice(0,3)
            word + "ay"
        elsif !vowels.include?(word[0]) && !vowels.include?(word[1])
            word = word.slice(2..-1) + word.slice(0, 2)
            word + "ay"
        else
            word = word.slice(1..-1) + word.slice(0)
            word + "ay"
        end 
        end

     end



            









