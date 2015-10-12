# Die Class 2: Arbitrary Symbols


# I worked on this challenge by myself
# I spent [#] hours on this challenge.

# Pseudocode

# Input: the Die class takes an array of strings
# Output: Creates an instances of the Die class unless the Array is empty.
# Steps:
# DEFINE new class Die
#   Set method to ask for an argument to be passed when first initializing the instance.
#     Include an argument error if the array passed is empty
#     Define the labels variable to be equal to the array
#   End that
#   DEFINE sides
#     RETURN the length of labels
#   END
#   DEFINE roll
#     RETURN the first value of a shuffled labels
#   END
# END
#

# Initial Solution

# class Die
#   def initialize(labels)
#     if labels.length == 0
#       raise ArgumentError.new("You must input at least one side as a string")
#     end
#     @labels = labels
#   end

#   def sides
#     return @labels.length
#   end

#   def roll
#     return @labels.shuffle[0]
#   end
# end



# Refactored Solution

class Die
  def initialize(labels)
    if labels.length == 0
      raise ArgumentError.new("You must input at least one side as a string")
    end
    @labels = labels
  end

  def sides
    return @labels.length
  end

  def roll
    return @labels.sample
  end
end



# Reflection
# What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?
# Last week I got to try out the attr_reader, but there wasn't much an opportunity this time. I also found that last week's logic took me a little longer to figure out. I had to learn about rand, while this time I figured .shuffle[0] would work (and then I refactored to .sample). I needed to change logic for the roll method and the sides method, but it was not radical by any means.

# What does this exercise teach you about making code that is easily changeable or modifiable?
# I think that easily modifiable code is very valuable. Especially to consider that I can easily alter this class and perhaps change the way thousands of objects work.

# What new methods did you learn when working on this challenge, if any?
# I learned about the #sample method! Pretty convinient. I also found that my code was running faster with it than with #shuffle[0]. It was really cool to witness that (thanks to rspec).

# What concepts about classes were you able to solidify in this challenge?
# My largest error was forgetting to use the @ sign when referring to my instance variable label. By making these errors and correcting them, I am solidifying my understanding/practice of making classes.