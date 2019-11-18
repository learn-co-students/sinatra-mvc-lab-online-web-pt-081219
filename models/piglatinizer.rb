
class PigLatinizer

  def piglatinize(string)
    string.split(' ').map{ |word| piglatinize_word(word) }.join(' ')
  end

  def piglatinize_word(word)
    vowels = %w(a e i o u)
    alpha = ('a'..'z').to_a
    consonants = alpha - vowels
    digraphs = %w(bl br ch ck cl cr dr fl fr gh gl gr ng ph pl pr qu sc sh sk sl sm sn sp st sw th tr tw wh wr)
    trigraphs = %w(nth sch scr shr spl spr squ str thr)

    if vowels.include? (word[0].downcase)
      "#{word}way"
    elsif trigraphs.include? (word[0..2].downcase)
      "#{word[3..-1]}#{word[0..2]}ay"
    elsif digraphs.include? (word[0..1].downcase)
      "#{word[2..-1]}#{word[0..1]}ay"
    elsif consonants.include? (word[0..1].downcase)
      "#{word[2..-1]}#{word[0..1]}ay"
    elsif consonants.include? (word[0].downcase)
      "#{word[1..-1]}#{word[0]}ay"
    else
      word
    end

  end

end
