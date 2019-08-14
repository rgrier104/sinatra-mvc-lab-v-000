class PigLatinizer
  attr_reader :text

  def initialize(text)
    @text = text.downcase
  end

  def piglatinize_word(word)
    letter_array = word.split('')
    first_letter = word[0].downcase
    second_letter = word[1].downcase
    third_letter = word[2].downcase
    if word.scan(/[aeoui]/).count == 0
      

  def piglatin(text)
    word_array = text.split(/\W+/)
    pig_array = word_array.map do |word|
      pitlatinize_word(word)
    end
    pig_array.join(" ")
  end

end
