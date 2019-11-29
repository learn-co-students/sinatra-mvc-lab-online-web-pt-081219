class PigLatinizer

  attr_accessor :words

  def initialize
  end

  def piglatinize(text)
    output = ""
    piglatinized = []
    words = text.split(" ")
    words.each do |word|
      word = word.to_s
      letters = word.split("")
        if letters[0] =~ /[aeiouAEIOU]/
          letters = latinup(letters)
          piglatinizedword = letters.join("") + "way"
        else
          letters = latinup(letters)
          piglatinizedword = letters.join("") + "ay"
        end
      piglatinized << piglatinizedword
      end
      piglatinized.each do |w|
        output += "#{w} "
      end
      output = output.rstrip
      output
  end

  def latinup(letters)
      count = 0
      start = []
      letters.each do |letter|
        break if letter =~ /[aeiouAEIOU]/
          count += 1
        end
      start = letters.shift(count)
      letters += start
      letters
    end
end
