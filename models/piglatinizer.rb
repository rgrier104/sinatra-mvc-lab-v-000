class PigLatinizer
  attr_reader :text

  def initialize(text)
    @text = text.downcase
  end

  def piglatinize_word(word)
    letter_array = word.split('')
    first3_array = word[0,3].split('')
    sec1_array = []

    if word.scan(/[aeoui]/).count == 0
      new_word = slice(1,word.length-1) + word[0] + "ay"
    else
      letter_array.map do |letter|
        if letter not in 'aeoui'
          sec1_array << letter
        end
      end
    end
  end



  def piglatin(text)
    word_array = text.split(/\W+/)
    pig_array = word_array.map do |word|
      pitlatinize_word(word)
    end
    pig_array.join(" ")
  end

end
