
require('rspec')
require('anagrams')

describe('String#anagrams') do
  it("returns the result for an anagram test") do
    expect(anagrams("zzz", "ddd")).to eq( "Enter a real word")
  end
  it("returns true for a word that is a palindrome") do
    expect("racecar".palindrome?()).to eq(true)
  end
  it("returns true for a phrase") do
    expect("Race fast, safe car".palindrome?()).to eq(true)
  end
end
 
