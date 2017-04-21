require('rspec')
require('anagrams')

describe('String#anagrams') do
  it("returns the result for an anagram test") do
  expect(("ruby".anagrams("bob")).to(eq("These are anagrams"))
  end

  it("returns the result for an anagram test") do
  expect("racecar".anagrams("race car")).to eq()

  end
end
