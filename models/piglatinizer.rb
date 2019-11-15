class PigLatinizer
  attr_reader :text 
  
  def initialize
  end 
  
  def piglatinize(text)
    words = text.split(/\s+/).map do |word|
      
      match = word.match(/\A[^aeiou]+/i)
      initial_consonants = match ? match[0] : "" 
      body = word[initial_consonants.length..-1]  
      suffix = match ? 'ay' : 'way'
      body + initial_consonants + suffix 
    end 
    words.join(" ")
  end 
  

  
end 

  # prefix = word.match(/[^aeiou]+/i)[0]
  # org[prefix.length, org.length-prefix.length} + prefix] + ay 


      # new_word = word.insert(length, letter)
      # new_word.shift
      # (new_word << "ay").join