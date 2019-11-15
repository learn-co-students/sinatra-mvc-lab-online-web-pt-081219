class PigLatinizer
    
    
    def piglatinize(sentence)
        words = sentence.split
        new_words = words.map do |word|
          if word.start_with?(/[aeiouAEIOU]/)
            word + "way"
          else 
            ending = word.slice(/[bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ]+/)
            pigword = word.delete_prefix("#{ending}")+ending+"ay"
          end
        
      end 
      new_words.join(" ")
end 
end 