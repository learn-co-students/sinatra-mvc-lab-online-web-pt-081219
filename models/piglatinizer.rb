require 'pry'

class PigLatinizer

  attr_reader :text
 
  	def piglatinize(text)
	  	array = []
	  	word = text.split(" ")
	  	word.each do |w|

	  	  
	  	  if w.scan(/[BbCcDdFfGgHhJjKkLlMmNnPpQqRrSsTtVvWwXxYyZz]*/).first !=""
	  		 array << consonants(w)		

	  	  elsif w.scan(/[AEIOUaeiou]*/).first != "" # firsl letter in word is a vowel
	  		 array << vowels(w)
 	  	  end
  		
	 	end
	 	array.join(" ") 
    end

  	def vowels(string)
  	  string << "way"
  	end

  	def consonants(string) 
  	  	prefix = string.scan(/[BbCcDdFfGgHhJjKkLlMmNnPpQqRrSsTtVvWwXxYyZz]*/).first.to_s
  	  	new_str = string.delete_prefix(prefix)
  	  	new_str << prefix
  	  	new_str + "ay"	
  	end

 end

 