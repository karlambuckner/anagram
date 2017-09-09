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
    it("takes two words and compares the characters to determine if they are anagrams") do
      anagram = Anagram.new("goodbye", "hi")
      expect(anagram.anagram_checker).to(eq("This is not an anagram"))
    end
    it("compares two words to determine an anagram regardless of case") do
      anagram = Anagram.new("Cat", "Act")
      expect(anagram.anagram_checker).to(eq("This is an anagram"))
    end
    it("checks if words are also palindromes regardless of case") do
      anagram = Anagram.new("Anna", "anna")
      expect(anagram.palindromes_checker).to(eq("This is also a palindrome"))
    end
    it("checks if anagram words are also palindromes") do
      anagram = Anagram.new("tar", "rat")
      expect(anagram.palindromes_checker).to(eq("This is only an anagram"))
    end
    it("checks if a non-anagram is an antigram") do
      anagram = Anagram.new("lo", "cat")
      expect(anagram.antigram_checker).to(eq("No letter match, not an anagram"))
    end
    it("checks if a non-anagram is an antigram") do
      anagram = Anagram.new("work", "jump")
      expect(anagram.antigram_checker).to(eq("No letter match, not an anagram"))
    end
    it("checks if multiple words or a phrase are anagrams") do
      anagram = Anagram.new("the eyes", "they see")
      expect(anagram.anagram_checker).to(eq("This is an anagram"))
    end
    it("checks if multiple non-anagram words or a phrase are antigrams") do
      anagram = Anagram.new("book worm", "cat mall")
      expect(anagram.antigram_checker).to(eq("This is an antigram"))
    end
  end
