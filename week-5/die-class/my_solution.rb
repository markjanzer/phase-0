# Die Class 1: Numeric

# I worked on this challenge by myself

# I spent [] hours on this challenge.

# 0. Pseudocode

# Input: Create a instance of the class Die. input methods
# Output:
# Steps:


# 1. Initial Solution

# class Die
#   def initialize(sides)
#     if sides < 1
#       raise ArgumentError.new("Die must have 1 or more sides")
#     end
#     @sides = sides
#   end

#   def sides
#     @sides
#   end

#   def roll
#     rand(@sides) + 1
#   end
# end


# 3. Refactored Solution

class Die
  def initialize(sides)
    if sides < 1
      raise ArgumentError.new("Die must have 1 or more sides")
    end
    @sides = sides
  end
  attr_reader :sides
  def roll
    rand(@sides) + 1
  end
end



# 4. Reflection

# What is an ArgumentError and why would you use one?
# An ArgumentError is an error that is displayed when there is something wrong with the arguments that were provided. You can use the raise keyword to raise the errors under certain conditions.

# What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
# I don't think I have used rand before. I experimented a little with them to realize that rand(num) is for numbers between 0 and num, including 0 but not including num. To solve this, all I had to do was add 1. I used the attr_reader for the first time too! Didn't realize I was using symbols, so I placed the colon incorrectly the first time, but then I was able to correct it.

# What is a Ruby class?
# A class is a object type that you can construct. Objects created with this class will then have its properties and methods. Also, classes can inherit methods and from other classes.

# Why would you use a Ruby class?
# Instead of constructing a bunch of objects and individually assigning them methods (ticket_a.price, ticket_b.price, ticket_c.price), you can create a class for the objects. Then the way you change the class will change all of the individual objects. You can even set up a class to make it easy to make the individual instances of the class different from each other. A good example of that is how we use initialize to let us decide the side of a die.

# What is the difference between a local variable and an instance variable?
# A local variable is held within a method. An instance variable is held within a certain instance of a class. For instance, ticket_a.price = $10, and ticket_b.price = $200. Even though they are both in the Ticket class, they are both stored in their local variable @price.

# Where can an instance variable be used?
# An instance variable can be defined when defining a class, as it is done above. We are setting the individual values of the instances to a certain amount. They are used whenever that instance variable is called upon.