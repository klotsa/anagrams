

test1 = "race fast safe car"
test2 = "raceFastsafecar  ."
back_to_string1 =  []

vowel_array = ["a", "i", "e", "o", "u", "y"]

input1_formated =  test1.downcase.gsub(/[^a-z0-9]/i, '')
input2_formated =  test2.downcase.gsub(/[^a-z0-9]/i, '')
input1_reversed = input1_formated.reverse!
if input1_formated.size != input2_formated.size
  puts "Not an anagram!"
else
  if input1_formated.chars.sort == input2_formated.chars.sort
    if input2_formated == input1_reversed
    puts "But it's also a palindrome!"
  else
    puts "Indeed"
  end
else
  puts "alas"
end
end
