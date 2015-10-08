# Pad an Array

# I worked on this challenge with Becca Nelson.

# I spent [1] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? Array, and a number representing max length of output array, and a optional default value for the added elements.
# What is the output? (i.e. What should the code return?) An array that has been extended with additonal values up to max length.
# What are the steps needed to solve the problem?
#
# DEFINE pad! that takes array, min_size, and value = nil
#   variable difference = min_size - array.length
#   IF difference is less or equal to 0, return array.
#   END
#   difference times
#     push value to array
#   END
#   RETURN array
# END
#
# DEFINE pad that takes an array, a minimum size, and an optional value that defaults to nil.
#   Set variable equal to new array with min_size elements and value values.
#   FOR EACH value in array
#     set equal to corresponding spot in new array
#   END
#   RETURN new_array
# END

# 1. Initial Solution
# def pad!(array, min_size, value = nil) #destructive
#   difference = min_size - array.length
#   if difference <= 0
#     return array
#   end
#   i = 0
#   while i <= difference
#     array.push(value)
#     i += 1
#   end
#   p array
# end

# def pad(array, min_size, value = nil) #non-destructive
#   new_array = Array.new(min_size, value)
#   array.each_with_index do |v, i|
#     new_array[i] = array[i]
#   end
#   p new_array
# end


# 3. Refactored Solution

def pad!(array, min_size, value = nil) #destructive
  (min_size - array.length).times { array.push(value) }
  return array
end

def pad(array, min_size, value = nil) #non-destructive
  new_array = Array.new(min_size, value)
  array.each_index { |i| new_array[i] = array[i] }
  return new_array
end


# 4. Reflection

# Were you successful in breaking the problem down into small steps?
# Yes we were! First we talked about different possible solutions out loud, and then we got to peudocoding the solution that we chose. We found it to psuedocode the non-destructive method first.

# Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
# We translated it into code with relative ease. We had some difficulty iterating through an array and ony using the index, but we looked up .each_with_index (before refactoring to .each_index).

# Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
# Our initial solution was successful. I think it was successful because we had logical pseudocode to follow. Our refactored solutions are doing the same thing, just in fewer lines.

# When you refactored, did you find any existing methods in Ruby to clean up your code?
# Yes, we found the .each_index method that cleaned up our iteration through the original array. Also Becca taught me about the values you can put in Array.new.

# How readable is your solution? Did you and your pair choose descriptive variable names?
# I think our variable names are very descriptive. Our solutions are relatively readable. I think the refactored versions take a little bit of time to get your brain around, but they aren't arcane.

# What is the difference between destructive and non-destructive methods in your own words?
# Destructive methods alter an argument that has been passed into it, while non-destructive methods do not. If you were to call the argument before and after a destructive method, you could get different results, while with a non-destructive method you would get the same results.
