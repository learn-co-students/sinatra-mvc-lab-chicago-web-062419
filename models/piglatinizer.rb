require 'pry'
class PigLatinizer

    def piglatinize(phrase)
        alphabet = ('a'...'z').to_a
        vowels = ['a','e','i','o','u']
        consonants = alphabet - vowels
        word_array = phrase.split(" ")
        fixedarr = word_array.map do |word|
            if vowels.include?(word[0].downcase)
                "#{word}way"
            elsif consonants.include?(word[0].downcase) && consonants.include?(word[1].downcase) && consonants.include?(word[2].downcase)
                word[3..-1] + word[0..2] + 'ay'
            elsif consonants.include?(word[0].downcase) && consonants.include?(word[1].downcase)
                word[2..-1] + word[0..1] + 'ay'
            elsif consonants.include?(word[0].downcase)
                word[1..-1] + word[0] + 'ay'
            else
                word
            end
        end
        fixedarr.join(" ")
    end
end

