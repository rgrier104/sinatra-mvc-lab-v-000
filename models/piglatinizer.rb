class PigLatinizer
  attr_reader :text

  def initialize(text)
    @text = text.downcase
  end

  def piglatinize_word(word)
    letter_array = word.split('')
    first3_array = word[0,3].split('')
    sec1_array = []

    if ('aeiou').include?(letter_array[0])
      new_word = word + "way"
    else
      first3_array.map do |letter|
        if !('aeoui').include?(letter)
          sec1_array << letter
        end
      end
      new_word = sec1_array
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
