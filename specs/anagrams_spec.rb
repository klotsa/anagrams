require('rspec')
require('anagrams')

describe('String#anagrams') do
  it("returns the result for an anagram test") do
  expect("ruby, bury".anagrams()).to(eq("These are anagrams"))
  end
end
