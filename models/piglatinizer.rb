class PigLatinizer
  
  attr_accessor :phrase
  
  def intialize(phrase)
    @phrase = phrase
  end 
  
  def is_vowel?(word)
    vowels = 'aeiouAEIOU'
    vowels.include?(word[0])
  end 
  
  def piglatinize_word(word)
    if self.is_vowel?(word)
      word.concat("way")
    else
      word.concat(word.slice!(/^[^aeiouAEIOU]*/i || "")) + 'ay'
    end
  end
  
  def to_pig_latin(phrase)
    phrase.split.collect {|word| piglatinize_word(word)}.join(' ')
  end
  
  def piglatinize(string)
    to_pig_latin(string)
  end 
  
end 