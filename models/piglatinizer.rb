require 'pry'
class PigLatinizer
    def piglatinize(phrase)
        alphabet = ('a'...'z').to_a
        # create alphabet array with range and to_a
        vowels = ['a','e','i','o','u']
        # store vowels
        consonants = alphabet - vowels

        word_array = phrase.split(" ")
        #split phrase into array...['I', "love", "programming"]
        
        fixed_array = word_array.map do |word|
            if vowels.include?(word[0].downcase) #if word includes a vowel as its first letter
            "#{word}way" 
            # => appleway
            elsif consonants.include?(word[0].downcase) && consonants.include?(word[1].downcase) && consonants.include?(word[2].downcase)
                #if word includes a consanant as its 1st and 2nd, and 3rd letter
            word[3..-1] + word[0..2] + 'ay'#{word[0..2]}ay" #add 'ay' to end of word.
            elsif consonants.include?(word[0].downcase) && consonants.include?(word[1].downcase)
                #if word includes a consanant as its 1st and 2nd letter
            word[2..-1] + word[0..1] + 'ay' #add 'ay' to end of word.
            elsif consonants.include?(word[0].downcase)
                word[1..-1] + word[0] + 'ay'
            else
                word
            end
        end
        fixed_array.join(" ")
    end
end