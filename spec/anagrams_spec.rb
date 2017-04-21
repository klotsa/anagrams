
require('rspec')
require('anagrams')

describe('String#anagrams') do
  it("returns the result for an anagram test") do
    expect("zzz".anagrams("ddd")).to(eq("Enter a real word"))
  end
end
  describe('String#anagrams') do
    it("returns the result for an anagram test") do
    expect("john".anagrams("ddd")).to(eq("Enter a real word"))
  end
end
  describe('String#anagrams') do
    it("returns the result for an anagram test") do
    expect("dod".anagrams("not")).to(eq("These are not anagrams"))
  end
end

  describe('String#anagrams') do
    it("returns the result for an anagram test") do
    expect("ruby".anagrams("bury")).to(eq("These are anagrams"))
  end
end

  describe('String#anagrams') do
    it("returns the result for an anagram test") do
    expect("race fast safe car".anagrams("racefastsafecar")).to(eq("These are also palindromes!"))
  end
end
