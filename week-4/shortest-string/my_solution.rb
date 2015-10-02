# Shortest String

# I worked on this challenge by myself

# shortest_string is a method that takes an array of strings as its input
# and returns the shortest string
#
# +list_of_words+ is an array of strings
# shortest_string(array) should return the shortest string in the +list_of_words+
#
# If +list_of_words+ is empty the method should return nil

#Your Solution Below

# Didn't read directions
# def shortest_string(list_of_words)
#   list_of_words.sort! { |x,y| x.length <=> y.length }
#   return list_of_words[0]
# end

def shortest_string(list_of_words)
  shortest_length = 0
  shortest_word = nil
  list_of_words.each { |word|
    if shortest_word == nil
      shortest_word = word
      shortest_length = word.length
    elsif word.length < shortest_length
      shortest_word = word
      shortest_length = word.length
    end
  }
  return shortest_word
end
