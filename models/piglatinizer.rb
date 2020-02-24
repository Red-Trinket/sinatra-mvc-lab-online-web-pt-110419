require 'pry'

class PigLatinizer

  def piglatinize_word(word)
    first_letter = word[0].downcase
    if first_letter == "a" || first_letter == "e" || first_letter == "i" || first_letter == "o" || first_letter == "u"
        "#{word}way"
    else
        # piglatinize word that starts with a consonant
    end
  end

  def piglatinize(string)
    a = string.split(" ")
    b = a.map {|word| piglatinize_word(word)}
    b.join(" ")
  end

  def vowel?(letter)
    letter.downcase
    letter == "o" || letter == "e" || letter == "a" || letter == "i" || letter == "u"
  end

end 