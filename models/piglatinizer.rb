require "pry"

class PigLatinizer
  def word_split(word)
    word.split(/([aeiouAEIOU].*)/)
  end

  def latin_word(word)
    if word.length > 1
      array = word_split(word)
      if array[0].length < 1
        return "#{array[1]}way"
      else
        return "#{array[1]}#{array[0]}ay"
      end
    else
      "#{word}way"
    end
  end

  def piglatinize(phrase)
    array = phrase.split(" ")
    latin_array = []
    array.each do |word|
      latin_array << latin_word(word)
    end
    latin_array.join(" ")
  end
end
