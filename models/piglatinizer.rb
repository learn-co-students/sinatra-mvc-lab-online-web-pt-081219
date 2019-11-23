class PigLatinizer 
    def is_vowel?(word)
        vowels = "aeiouAEIOU"
        vowels.include?(word[0])
    end

    def piglatinize(string)
        words = string.split
        words.collect do |word|
          if is_vowel?(word[0])
            word += "way"
          else
            until is_vowel?(word[0]) do
              word = word[1..-1] + word[0]
            end
            word = word + "ay"
          end
        end.join(" ")
      end

  
end