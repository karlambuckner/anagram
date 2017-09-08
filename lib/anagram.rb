class Anagram
  def initialize(word1, word2)
    @word1 = word1
    @word2 = word2
  end

  def word_checker
    if @word1 =~ /[aeiouy]/ && @word2 =~ /[aeiouy]/
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

  def palindromes_checker
    @word1 = @word1.downcase
    @word2 = @word2.downcase
    if @word1 == @word1.reverse && @word2 == @word2.reverse
      return "This is also a palindrome"
    else
      return "This is an anagram"
    end
  end

  def antigram_checker
    @word1 = @word1.downcase.split("")
    @word2 = @word2.downcase.split("")
    match = @word1 & @word2
    if match == []
      return "No letter match, not an anagram"
    end
  end
end
