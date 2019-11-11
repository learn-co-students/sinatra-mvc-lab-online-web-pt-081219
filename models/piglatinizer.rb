class PigLatinizer
  def piglatinize(input)
    words = input.split(" ")

    words.map do |word|
      piglatinize_word(word)
    end.join(" ")
  end

  private
  
  def piglatinize_word(input)
    first = input.match(/^[^AEIOUYaeiouy]+/)

    if first
      first = first[0]
      rest = input[first.length..-1]
      "#{rest}#{first}ay"
    else
      "#{input}way"
    end
  end
end