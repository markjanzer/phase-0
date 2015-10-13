#Attr Methods

# I worked on this challenge [by myself, with:]

# I spent [#] hours on this challenge.

class NameData
  def initialize
    @name = "Mark Janzer"
  end

  attr_reader :name

end


class Greetings
  def initialize
    @get_name = NameData.new
  end

  attr_reader :get_name

  def hello
    return "Hello #{get_name.name}, hope you have a wonderful day!"
  end
end

greet = Greetings.new
p greet.hello




# Reflection

# Release_1
# What are these methods doing?
# The initialize is making every new instance of the class have @age = 27, @name = "Kim", and @occupation = "Cartographer."
# The following pattern of what_is_name and change_my_name are creating readers and writers respectively. The reading method allows the user to read the value, such as @name, with the method what_is_name. The writer allows the user to change the name with the method change_my_name.

# How are they modifying or returning the value of instance variables?
# They are creating individual methods for each value to be modified or read.

# Release_2
# What changed between the last release and this release?
# There is an attribute reader method that is used to print the age in this code. Now instead of using the method what_is_age to get the age returned, the user can merely use the method age.

# What was replaced?
# def what_is_age
#   @age
# end
# Was replaced with
# attr_reader :age

# Is this code simpler than the last?
# Yes, but only slightly so! Actually maybe it is not as simple because there is inconsistency in how reader methods are being defined. But it's on the right path!

# Release_3
# What changed between the last release and this release?
# An attr_writer was used for age instead.

# What was replaced?
# def change_my_age=(new_age)
#   @age = new_age
# end
# Was replaced with
# attr_writer :age

# Is this code simpler than the last?
# Slightly so, still needs conformity to be more simple. It is definitely shorter!

# Final Reflection
# What is a reader method?
# A reader method is the equivalent to:
# def variable
#   @variable
# end
# It is a method that returns the variable value when called.

# What is a writer method?
# A writer method is the equivalent to:
# def variable= (value)
#   @variable = value
# end
# It is a method that allows you to change the value of a variable by stating class.method = value.

# What do the attr methods do for you?
# Attr methods help your code stay DRY. They let you create reader and writer methods for multiple variables all on the same line.

# Should you always use an accessor to cover your bases? Why or Why not?
# You shouldnot always use an accessor because you don't always want all variables to be readable and writeable. You don't want the user to be able to change or read some variables.

# What is confusing to you about these methods?
# I think that the most confusing thing was defining a new instance of a class within another class, and then using it's methods and values.