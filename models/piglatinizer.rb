class PigLatinizer
  attr_reader :text

  def initialize(text)
    @text = text.downcase
  end

  def piglatin(text)
    word_array = text.split(/\W+/)
    pig_array = word_array.map do |word|
      pitlatinize_word(word)
    end
    pig_array.join(" ")
  end

end
