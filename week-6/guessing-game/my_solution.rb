# Build a simple guessing game


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: A new GuessingGame instance with an integer of as the argument. The instance should take .solved?, and .guess (with an numeric arguement).
# Output: Returns whether the last guess was correct with a boolean for .solved? Returns :high, :low or :correct depending on whether the guess was too high, too low, or just right.
# Steps:
# Create a new class: GuessingGame
#   DEFINE a way to initialize the instance that takes one argument, answer, that is a number.
#     Set answer to a variable, and set a solved variable to be false
#   END
#   DEFINE method to check if solved.
#     RETURNS solved variable (which should be a boolean)
#   END
#   DEFINE Guess method that takes an argument of a number, num
#     If num is greater than answer, return high, if it is lower, return low, if it is equal, return ture.
#     Set solved to be true if it is equal, else set solved to be false
#     END
#   END
# END

# Initial Solution

# class GuessingGame
#   def initialize(answer)
#     @answer = answer
#     @solved = false
#   end
#   def solved?
#     return @solved
#   end
#   def guess(num)
#     if num > @answer
#       @solved = false
#       return :high
#     elsif num < @answer
#       @solved = false
#       return :low
#     else
#       @solved = true
#       return :correct
#     end
#   end
# end


# Refactored Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
    @solved = false
  end
  def solved?
    return @solved
  end
  def guess(num)
    @solved = false
    if num > @answer
      return :high
    elsif num < @answer
      return :low
    else
      @solved = true
      return :correct
    end
  end
end


# Reflection