require 'pry'

class PigLatinizer

  def piglatinize(word)
    letters = word.split("")
    letters.keep_if {|letter| letter != "."}
    if vowel?(letters[0])
      letters << "way"
    else 
      if letters.size == 1
        letters  << "way"
      elsif letters.size > 1 
        until vowel?(letters[0]) 
          letters << letters.shift
        end
        letters  << "ay"
      end 
    end 
    letters.join
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