# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge with Eran Chazan

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: Array with numbers
# Output: Sum as an integer or float
# Steps to solve the problem.

# Set counter = 0
# Set a sum variable = 0
# WHILE counter is <= array length - 1
#   Add variable from [counter] position in array to sum
#   Increment counter by one
# RETURN sum

# 1. total initial solution

def total(array)
  x = 0
  sum = 0
  while x <= array.length - 1
    sum += array[x]
    x += 1
  end
  return sum
end

# 3. total refactored solution



# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: Array of words (and I guess numbers)
# Output: String of a complete sentence
# Steps to solve the problem.

# Set counter = 0
# Set sum = ""
# WHILE counter <= array length - 1
#   Now we want to have an if else statement, adding a space after each word unless it is the last word.
#   IF counter < array length - 1
#     Add array[counter] and " " to the sum
#   ELSE
#     Add array[counter] to the sum
#   END if else statement
#   Increment counter
# END while loop
# Capitalize first letter of sum.
# Add period to the end of sum.
# RETURN Sum


# 5. sentence_maker initial solution

# def sentence_maker(array)
#   x = 0
#   sum = ""
#   while x <= array.length-1
#     if x == array.length-1
#       sum += array[x].to_s
#       x += 1
#     else
#       sum += array[x].to_s + " "
#       x += 1
#     end
#   end
#   sum += "."
#   sum.capitalize!
#   return sum
# end


# 6. sentence_maker refactored solution
def sentence_maker(array)
  x = 0
  sum = ""
  array.each { |word|
    sum += (word.to_s + " ")
  }
  sum.rstrip!.capitalize!
  sum += "."
  return sum
end