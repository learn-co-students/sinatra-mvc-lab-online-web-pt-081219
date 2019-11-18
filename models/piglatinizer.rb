class PigLatinizer

  def piglatinize(input_str)
    input_str.split(" ").length == 1 ? piglatinize_word(input_str) : piglatinize_sentence(input_str)
  end

  def consonant?(char)
    !char.match(/[aAeEiIoOuU]/)
  end

  def piglatinize_word(word)

    vowels = ['A','a','E','e','I','i','O','o','U','u']
    if consonant?(word.split("")[0])  && consonant?(word.split("")[1]) &&
      consonant?(word.split("")[2])
      translation = word.slice(3..-1) + word.slice(0,3) + 'ay'
    elsif consonant?(word.split("")[0]) && consonant?(word.split("")[1])
      translation = word.slice(2..-1) + word.slice(0,2) + 'ay'
    elsif !consonant?(word.split("")[0])
      translation = word + 'way'
    elsif consonant?(word.split("")[0])
        translation = word.split.map { |word| word.chars.rotate.join }.join(' ') + 'ay'
    end
  end
  def piglatinize_sentence(input_str)
    input_str.split.collect { |word| piglatinize_word(word) }.join(" ")
  end
end
