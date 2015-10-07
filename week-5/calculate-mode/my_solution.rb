# Calculate the mode Pairing Challenge

# I worked on this challenge with: Steven Broderick.

# I spent [1.5] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.


# 0. Pseudocode

# What is the input? Array that contains  positive and negative integers or floats
# What is the output? (i.e. What should the code return?) Return an array with the most common numbers in them (more than one if there is a tie).
# What are the steps needed to solve the problem?
# DEFINE mode to take one argument (num_array)
#   Create a new hash: num_counts
#   FOR EACH number in num_array
#     IF there is a key of num in num_counts
#       Add 1 to the value of that key
#     ELSE create a key named num with value of 1
#     END
#   END
#   Set variable highest equal to first value in num_counts
#   FOR EACH value in num_counts
#     IF value > highest
#       highest = value
#     END
#   END
#   Create a solution array
#   FOR EACH value in num_counts
#      IF value = highest
#         Push the key to solution
#      END
#   END
#   RETURN solution
# END


# 1. Initial Solution

# def mode(num_array)
#   num_counts = {}
#   num_array.each do |num|
#     if num_counts.has_key?(num)
#       num_counts[num] += 1
#     else
#       num_counts[num] = 1
#     end
#   end
#   # finds the highest freq
#   highest = num_counts.values[0]
#   num_counts.each do |k, v|
#     if v > highest
#       highest = v
#     end
#   end
#   # checks for keys with that frequency
#   solution = []
#   num_counts.each do |k, v|
#     if v == highest
#       solution << k
#     end
#   end

#   solution
# end

# p mode([1,2,3,5,5]) #


# 3. Refactored Solution
def mode(num_array)
  num_counts = Hash.new(0)
  num_array.each { |n| num_counts[n] += 1 }
  solution = []
  num_counts.each do |k,v|
    solution << k if v == num_counts.values.max
  end
  return solution
end


# p mode([4,5,6,7,6,4,4,6])

# alternative num_counts derivation:
# num_counts = num_array.inject(Hash.new(0)) { |h, n| h[n] += 1; h}

# 4. Reflection

# Which data structure did you and your pair decide to implement and why?
# We used a hash to store the frequencies. It seems like a good data structure because we need to store a value for comparison but return a key.

# Were you more successful breaking this problem down into implementable pseudocode than the last with a pair?
# Yes, I think that my psuedocode was better than last time. We were able to break down the challenge into three really clear steps.

# What issues/successes did you run into when translating your pseudocode to code?
# We were actually able to get our code to run really fast with very few errors. The refactoring too much more time.

# What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?
# We mostly used each loops. Actually, we only used each loops. We figured out how to use inject a bit, but we had to look at other's solutions to figure out how it worked. I learned a lot about inject and about setting default values in hashes in this refactoring session. Oh and about the max method. Things were not too difficult to implement though, especially if they provided good examples.