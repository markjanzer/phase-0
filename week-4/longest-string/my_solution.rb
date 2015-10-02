# Longest String

# I worked on this challenge [by myself, with: ].

# longest_string is a method that takes an array of strings as its input
# and returns the longest string
#
# +list_of_words+ is an array of strings
# longest_string(list_of_words) should return the longest string in +list_of_words+
#
# If +list_of_words+ is empty the method should return nil


# Your Solution Below

# Didn't read directions!
# def longest_string(list_of_words)
#   list_of_words.sort! { |x,y| y.length <=> x.length }
#   return list_of_words[0]
# end

def longest_string(list_of_words)
  longest_string = nil
  longest_string_length = 0
  list_of_words.each { |word|
    if longest_string == nil
      longest_string = word
      longest_string_length = word.length
    elsif word.length > longest_string_length
      longest_string = word
      longest_string_length = word.length
    end
  }
  return longest_string
end