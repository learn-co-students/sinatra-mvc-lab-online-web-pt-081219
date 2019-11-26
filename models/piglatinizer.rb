require 'pry'

class PigLatinizer 


#\A means beginning of string and + means one or more matches 
  def piglatinize(words)
    words.split.map do |word|
      
    if m = word.match(/\A[^aeiou]+/i) #if first letter is a consonant..if word matches RegExp
   first_letter = m[0] #save the first consonant to this variable which matched the RegExp above.
 ending = "ay"

 else
   first_letter = "" #if first letter is not consonant leave as open string to prevent errors
ending = "way"
 end
   remaining = word[first_letter.length..-1] #first_letter.length is the beginnina of the empty string that we created above that holds all the characters we chopped off.
   
   remaining+first_letter+ending
 end.join(" ") # join take an argument but we just want a space between the words
  end


 end 

 
 
 #refractor 
 # For words that begin with consonant sounds, all letters before the initial vowel are placed at the end of the word sequence. Then, "ay" is added, as in the following examples:[12]

#     "pig" = "igpay"
#     "latin" = "atinlay"
#     "banana" = "ananabay"
#     "happy" = "appyhay"
#     "duck" = "uckday"
#     "me" = "emay"
#     "too" = "ootay"
#     ”bagel” = “agelbay”

# When words begin with consonant clusters (multiple consonants that form one sound), the whole sound is added to the end when speaking or writing.[13]

#     "smile" = "ilesmay"
#     "string" = "ingstray"
#     "stupid" = "upidstay"
#     "glove" = "oveglay"
#     "trash" = "ashtray"
#     "floor"= "oorflay"
#     "store"= "orestay"

# For words that begin with vowel sounds, one just adds "way" or "yay" to the end (or just "ay"). Examples are:

#     "eat" = "eatway" or "eatay"
#     "omelet" = "omeletway" or "omeletay"
#     "are" = "areway" or "areay"
#     "egg" = "eggway" or "eggay"
#     "explain" = "explainway"
#     "always" = "alwaysway" or "alwaysay"
#     "ends" = "endsway" or "endsay"
#     "honest" = "honestway"
#     "I"= "Iway"

# An alternative convention for words beginning with vowel sounds, one removes the initial vowel(s) along with the first consonant or consonant cluster.[citation needed] This usually only works for words with more than one syllable and offers a variant of the words in keeping with the mysterious, unrecognizable sounds of the converted words. Examples are:

#     "every" = "eryevay"
#     "another" = "otheranay"
#     "under" = "erunday"
#     "island" = "andislay"
#     "elegant" = "egantelay"

def piglatinize(string)
  words = string.split(/\s+/).map do |word|
    # 1) Find consonants (posible) at beginning
    match = word.match(/\A[^aeiou]+/i)
    initial_consonants = match ? match[0] : ""
    
    # 2) Remove consonant, keep rest of string
    body = word[initial_consonants.length..-1]

    # 3) Add consonants to end + ay or way
    suffix = match ? 'ay' : 'way'

    body + initial_consonants + suffix
  end

  words.join(" ")
end


puts "Should be igpay: #{piglatinize('pig')}"
puts "Should be ilesmay: #{piglatinize('smile')}"
puts "Should be eatway: #{piglatinize('eat')}"
puts "Should be Iway: #{piglatinize('I')}"

puts "Should be igpay ilesmay eatway Iway: #{piglatinize('pig smile eat I')}"
 

 
 
 
