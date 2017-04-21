


test1 = "zzza"
test2 = "bob  ."

input1_formated =  test1.downcase.gsub(/[^a-z0-9]/i, '')
input1_array = input1_formated.split("")
input2_formated =  test2.downcase.gsub(/[^a-z0-9]/i, '')
input2_array = input2_formated.split("")
vowel_array = ["a", "i", "e", "o", "u", "y"]
  input1_reversed = input1_formated.reverse!



#1 real word check
if (input1_array & vowel_array).any? && (input2_array & vowel_array).any?
#2 anything in common check
  if (input1_array & input2_array).any?
    #3 two inputs characters are equal check
      if input1_formated.chars.sort == input2_formated.chars.sort
       #4 palindrom check
        if input2_formated == input1_reversed
          puts "But these are also palindromes!"
        else #4 end
          puts "These are anagrams"
        end
      else #3 end
        puts "These are not anagrams"
      end
    else  #2 end
      puts "These words have no letter matches and are antigrams."
    end
  else #1 end
    puts "enter a real word"
end
