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
      new_word = word.slice(1,word.length-1) + word[0] + "ay"
    else
      first3_array.map do |letter|
        if letter.include?('aeoui')
          sec1_array << letter
        end
      end
      new_word = word[sec1_array.length+1, word.length-sec1_array.length] + sec1_array.join('') + "ay"
    end
    new_word
  end

  def piglatin
    word_array = text.split(/\W+/)
    pig_array = word_array.map do |word|
      piglatinize_word(word)
    end
    pig_array.join(" ")
  end

end
