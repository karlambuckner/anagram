require('rspec')
require('anagram')

  describe('Anagram#anagram_checker') do
    it("checks that both words include vowels in order to be words") do
      anagram = Anagram.new("djfj", "jkjk")
      expect(anagram.word_checker).to(eq("Please enter a real word"))
    end
    it("takes two words and compares the characters to determine if they are anagrams") do
      anagram = Anagram.new("eat", "ate")
      expect(anagram.anagram_checker).to(eq("This is an anagram"))
    end
    it("compares two words to determine an anagram regardless of case") do
      anagram = Anagram.new("Rat", "tar")
      expect(anagram.anagram_checker).to(eq("This is an anagram"))
    end
    it("checks if words are also palindromes regardless of case") do
      anagram = Anagram.new("Anna", "anna")
      expect(anagram.anagram_checker).to(eq("This is also a palindrome"))
    end
    it("checks if both words are instead antigrams") do
      anagram = Anagram.new("work", "jump")
      expect(anagram.anagram_checker).to(eq("No letter match, not an antigram"))
    end
    it("checks if multiple words or a phrase are anagrams or antigrams") do
      anagram = Anagram.new("wow coding is alot of fun")
      expect(anagram.anagram_checker).to(eq("This is an antigram"))
    end
  end
