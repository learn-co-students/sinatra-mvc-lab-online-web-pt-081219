class PigLatinizer

    def initialize()
    end

    def piglatinize(phrase)
        words = phrase.split(' ')
        editted_words = []

        words.each do |w|
            if %w[ a e i o u ].include?(w[0].downcase)
                editted_words << w + 'way'
            else
                #consonant(s) + body + 'ay'
                splitted = w.split /([aeiou].*)/
                beg_consonant = splitted[0]
                body = splitted.pop
                piglatin_word = body + beg_consonant + 'ay'
                
                editted_words << piglatin_word
            end
        end

        editted_words.join(' ')
    end
end