class PigLatinizer 
    def is_vowel?(word)
        vowels = "aeiouAEIOU"
        vowels.include?(word[0])
    end

    def piglatinize(string)
        words = string.split #turn into an array 
        words.collect do |word| #itterate over the array of words
          if is_vowel?(word[0]) #example apple
            word += "way" #appleway
          else #example word bacon
            until is_vowel?(word[0]) do #until a letter in a word is a vowel (acon)
              word = word[1..-1] + word[0] #letters 2- end of rest of letters plus the first letter at the end (aconb)
            end
            word = word + "ay" #add ay at end of word aconbay
          end
        end.join(" ") #do this to all words then join with a space and make a string again
      end

  
end
