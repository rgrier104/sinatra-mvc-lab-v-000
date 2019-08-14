class PigLatinizer
  attr_accessor :text

  def initialize(text = '')
    @text = text
  end

  def piglatinize(word)
    letter_array = word.split('')
    first3_array = word[0,3].split('')
    sec1_array = []

    if ('aeiouAEIOU').include?(letter_array[0])
      new_word = word + "way"
    elsif letter_array.length > 1 and ('aeoui').include?(letter_array[1])
      new_word = word[1,word.length-1] + word[0] + "ay"
    elsif letter_array.length > 2 and ('aeoui').include?(letter_array[2])
      new_word = word[2,word.length-1] + word[0,2] + "ay"
    elsif letter_array.length > 3 and ('aeoui').include?(letter_array[3])
      new_word = word[3,word.length-1] + word[0,3] + "ay"
    end

    new_word
  end

  def piglatin
    word_array = text.split(/\W+/)
    pig_array = word_array.map do |word|
      piglatinize(word)
    end
    pig_array.join(" ")
  end

end
