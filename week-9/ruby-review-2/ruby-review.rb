# Numbers to English Words


# I worked on this challenge by myself.
# This challenge took me 3 hours.

# in_words(4)         # => "four"
# in_words(27)       # => "twenty seven"
# in_words(92)       # => "ninety two"

# Pseudocode
# I want to write code that takes a number as the input and returns a string containing the English equivalent to that number.

# I'm thinking that I will be able to have the number and an empty string. For most two digit numbers I can do something to deal with digits individually. For 27, subtract 7 from the number, add "seven" to the string, then subtract 20 from the number and add "twenty" to the string. Teen numbers are going to be a pain.

# On second thought, I am going to break the numbers into their different digits, read through it backwards and add to the string depending on what digit they are.


# Initial Solution

# def in_words(num)
#   english = ""
#   i = 1
#   while i <= num.to_s.length
#     digit = num.to_s[-i]
#     if i == 1
#       if digit == "1"
#         english = " one" + english
#       elsif digit == "2"
#         english = " two" + english
#       elsif digit == "3"
#         english = " three" + english
#       elsif digit == "4"
#         english = " four" + english
#       elsif digit == "5"
#         english = " five" + english
#       elsif digit == "6"
#         english = " six" + english
#       elsif digit == "7"
#         english = " seven" + english
#       elsif digit == "8"
#         english = " eight" + english
#       elsif digit == "9"
#         english = " nine" + english
#       end
#     elsif i == 2
#       if digit == "1"
#         first_digit = num.to_s[-1]
#         if first_digit == 1
#           english = " eleven"
#         elsif first_digit == "2"
#           english = " twelve"
#         elsif first_digit == "3"
#           english = " thirteen"
#         elsif first_digit == "4"
#           english = " fourteen"
#         elsif first_digit == "5"
#           english = " fifteen"
#         elsif first_digit == "6"
#           english = " sixteen"
#         elsif first_digit == "7"
#           english = " seventeen"
#         elsif first_digit == "8"
#           english = " eighteen"
#         elsif first_digit == "9"
#           english = " nineteen"
#         end
#       elsif digit == "2"
#         english = " twenty" + english
#       elsif digit == "3"
#         english = " thirty" + english
#       elsif digit == "4"
#         english = " forty" + english
#       elsif digit == "5"
#         english = " fifty" + english
#       elsif digit == "6"
#         english = " sixty" + english
#       elsif digit == "7"
#         english = " seventy" + english
#       elsif digit == "8"
#         english = " eighty" + english
#       elsif digit == "9"
#         english = " ninety" + english
#       end
#     elsif i == 3
#       if english != ""
#         english = " and" + english
#       end
#       if digit == "1"
#         english = " one hundred" + english
#       elsif digit == "2"
#         english = " two hundred" + english
#       elsif digit == "3"
#         english = " three hundred" + english
#       elsif digit == "4"
#         english = " four hundred" + english
#       elsif digit == "5"
#         english = " five hundred" + english
#       elsif digit == "6"
#         english = " six hundred" + english
#       elsif digit == "7"
#         english = " seven hundred" + english
#       elsif digit == "8"
#         english = " eight hundred" + english
#       elsif digit == "9"
#         english = " nine hundred" + english
#       end
#     elsif i == 4
#       if digit == "1"
#         english = " one thousand" + english
#       elsif digit == "2"
#         english = " two thousand" + english
#       elsif digit == "3"
#         english = " three thousand" + english
#       elsif digit == "4"
#         english = " four thousand" + english
#       elsif digit == "5"
#         english = " five thousand" + english
#       elsif digit == "6"
#         english = " six thousand" + english
#       elsif digit == "7"
#         english = " seven thousand" + english
#       elsif digit == "8"
#         english = " eight thousand" + english
#       elsif digit == "9"
#         english = " nine thousand" + english
#       end
#     end
#     i += 1
#   end
#   return english.strip
# end


# Refactored Solution

# Tried to create a method that creates methods that add the correct values to the english string. Would have made this problem a lot DRYer, but I wasn't able to figure it out.
# def place_creator(place_name, if1, if2, if3, if4, if5, if6, if7, if8, if9)
#   def place_name(digit)
#     if digit == "1"
#       english = " " + if1 + english
#     elsif digit == "2"
#       english = " " + if2 + english
#     elsif digit == "3"
#       english = " " + if3 + english
#     elsif digit == "4"
#       english = " " + if4 + english
#     elsif digit == "5"
#       english = " " + if5 + english
#     elsif digit == "6"
#       english = " " + if6 + english
#     elsif digit == "7"
#       english = " " + if7 + english
#     elsif digit == "8"
#       english = " " + if8 + english
#     elsif digit == "9"
#       english = " " + if9 + english
#     end
#   end
# end

# Here is some more pseudocode. This is more for me to work through my logic rather than for others to follow along :p

# If the number is zero, return "zero."
# Create empty string, english, and a counter that starts at one.
# Create arrays for each place value of the number (ex. ones, tens, hundreds, thousands), and give them a name that reads their index number. For example, hundreds[2] should return the string "two hundred."
# Put all of these array places. First index should be ones, second tens, third hundreds, etc. This lets the index of the places array correlate to how many digits before the decimal point they are. We can even store the strange teens at the 0th index.
# We are going to loop through each digit of the given num backwards, using negative indeces. When we do this, we have the index, i, and we make the digit which will be num.to_s[-i] (or the digit i places back from the end of num).
# For the most part we can use the index to find the correct array in place, and we can use the digit to find the correct word in the nested array.
# This is all well and dandy, but we need to have an exception for the teens, not just in the first teens place (2nd number), but also for every other one (5th number, 8th number, etc.) But we also need to check for this before we input the ones digit, or else 14 would return "fourteen four."
# To this, we check if i (current index) - 1 % 3 == 0. If this is true, then the next digit is a teen digit. We have to also check if the next digit is == 1 (because 25 is not a teen number). We can do that with num.to_s[-(i + 1)] == 1. Then we also have the check that the current digit is not zero with digit != 0. If all of these are true then we have encountered the deadly teen numbers.
# If the number is a teen number, we are going to refer to a completely different array to get our strings generated. I was going to put teens at the front of the places array, but I realized that I will need multiple teen arrays, for thousand teens, million teens, etc.
# I need to refer to this teen_places array for the string to add to english. I can find which teen array to use by taking the current index, subtracting one and dividing by three. If it were the first teens, it would send me to the teen_places[(1-1)/3] or 0, the next one would use teen_places[(4-1)/3]. Within this array it has to search for the string using the digits.
# We also need to make sure that the next index is skipped, because this is all done. We can do this by incrementing i once more before it is incremented at the end of the while loop.
# At the end we need to strip english of the spaces on either side.

def in_words(num)
  if num == 0
    return "zero"
  end

  ones = ["", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
  tens = ["", "ten", "twenty", "thirty", "fourty", "fifty", "sixty", "seventy", "eighty", "ninety"]
  hundreds = ones.map { |eng| eng + " hundred" if eng != ""}
  thousands = ones.map { |eng| eng + " thousand" if eng != ""}
  ten_thousands = tens.map { |eng| eng + " thousand" if eng != ""}
  hundred_thousands = ones.map { |eng| eng + " hundred thousand" if eng != ""}
  millions = ones.map { |eng| eng + " million" if eng != ""}
  places = ["", ones, tens, hundreds, thousands, ten_thousands, hundred_thousands, millions]

  hund_teens = ["", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]
  thou_teens = hund_teens.map { |eng| eng + " thousand" if eng != ""}
  mill_teens = hund_teens.map { |eng| eng + " million" if eng != ""}
  teen_places = [hund_teens, thou_teens, mill_teens]

  english = ""
  i = 1
  while i <= num.to_s.length
    digit = num.to_s[-i].to_i
    if (i - 1) % 3 == 0 && num.to_s[-(i + 1)].to_i == 1 && digit != 0
      english = " " + teen_places[(i-1)/3][digit] + english
      i += 1
    else
      english = " " + places[i][digit] + english
    end
    i += 1
  end
  return english.strip
end

puts in_words(59)
puts in_words(7876)
puts in_words(16)
puts in_words(519)
puts in_words(0)
puts in_words(3265472)


# Reflection
# What concepts did you review in this challenge?
# I learned how you can use arrays to set values. I also learned how hard it is to make creator methods, or methods that make methods. I'm looking forward to getting some help with that. I also learned what a nonesensical pain the logic is for teen numbers.

# What is still confusing to you about Ruby?
# How do I make methods that make other methods as I tried to do? Is it only possible in classes or modules?

# What are you going to study to get more prepared for Phase 1?
# Probably some more DOM stuff, JQuery, and frameworks for HTML and CSS.
