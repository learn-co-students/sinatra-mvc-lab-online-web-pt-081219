class PigLatinizer
  
  
  
  def piglatinize(text)
    array = text.split(" ")
    string = []
    array.each do |word|
      beginning = ""
      word.split("").each do |c|
        if ["a", "e", "i", "o", "u"].include?(c.downcase)
          break
        else
          beginning << c
        end
      end
      
      if beginning == ""
        new = word
        new << "way"
      else
        #binding.pry
        new = word[beginning.length..-1]
        new << beginning
        new << "ay"
      end
      string << new
    end
    string.join(" ")
  end
end