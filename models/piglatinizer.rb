require 'pry'
class PigLatinizer
  
  def initialize
  end 
  
  def piglatinize(sentence)
    words = sentence.split(" ")
    pigwords = words.map {|word| piglatinize_word(word)}.join(" ").strip
  end 
    
  
  def piglatinize_word(word)
    first_letter = word[0]
    
    if ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"].include?(first_letter)
      "#{word}way"
    else 
      consonants = []
      consonants << word[0]
        if ["a", "e", "i", "o", "u"].include?(word[1]) == false
          consonants << word[1]
          if ["a", "e", "i", "o", "u"].include?(word[2]) == false
            consonants << word[2]
          end
        end
      "#{word[consonants.length..-1] + consonants.join + "ay"}"
    end
  end 
      
      
  
end 