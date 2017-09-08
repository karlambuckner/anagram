class Anagram
  def initialize(word1, word2)
    @word1 = word1
    @word2 = word2
  end

  def word_checker
    if @word1 =~ /[aeiouy]/i && @word2 =~ /[aeiouy]/i
    anagram_checker
    else
      return "Please enter a real word"
    end
  end

  def anagram_checker
    @word1 = @word1.downcase
    @word2 = @word2.downcase
    result = @word1.length == @word2.length && @word1.delete(@word2).empty?
    if result == true
      return "This is an anagram"
    end
  end
end
