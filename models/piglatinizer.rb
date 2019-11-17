class PigLatinizer 
    attr_accessor :no_change, :vowels

    def initialize
        @no_change = ["i","me","to","too","a","an","in","and","on"]
        @vowels = ["a", "e", "i", "o", "u"]
    end

    def piglatinize(string)
        string.split.collect{|word| make_piglatin(word)}.join(" ")
    end 
    
    def make_piglatin(word)
        if no_change.include?(word)
            word + "way"
        elsif vowels.include? word[0].downcase
            word << 'way'
        else 
            consonants = ""
            while !vowels.include?(word[0])
                consonants << word[0]
                word = word.split("")[1..-1].join
            end
            word + consonants + 'ay'
        end
    end

end