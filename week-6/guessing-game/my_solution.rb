# Build a simple guessing game


# I worked on this challenge by myself
# I spent 1.5 hours on this challenge.

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
# How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
# I am not sure. I guess that changing a real-world object does not change every other object, and the same can be said about instance variables and methods because they are out of the scope of other methods, instances, and classes.

# When should you use instance variables? What do they do for you?
# You should use instance variables whenever you need to alter a variable that will be different than any other instance. They act as normal variables but they are not altered by other instances of the same class.

# Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
# You pay attention to the pathing, how the computer will read the code. Loops and if statements can change (or "control") the flow. I had a slight struggle when refactoring. I was trying to consider where I could place @solved = false (seeing as that was the case most of the time). I ended up placing it whenever you define guess, and having it revert back to true whenever correct is returned.

# Why do you think this code requires you to return symbols? What are the benefits of using symbols?
# I am still not sure why it requires symbols. I know that symbols are more permanent and cannot be altered. I still think it would work with strings. I will continue to look into this, and re-read 8.2 in the Well Grounded-Rubyist.