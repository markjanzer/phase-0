puts "What is your first name?"
fName = gets.chomp
puts "What is your middle name?"
mName = gets.chomp
puts "What is your last name?"
lName = gets.chomp
puts "Hello "+ fName + " " + mName + " " + lName + "!"


puts "What is your favorite number?"
fNum = gets.chomp.to_i
bNum = fNum + 1
puts "You know, " + fNum.to_s + " is cool and all, but " + bNum.to_s + " is even bigger and cooler."



How do you define a local variable?

You define a local variable by stating its name (make sure it does not start with a capitalized letter), and then setting it equal to a value using a "=."


# How do you define a method?

# To begin you type "def." Then you state the name of the method, and then in parentheses, on the same line, write the parameters (separated by commas). If you want, you do not need to user parentheses and instead put a space between the method name and the parameters.

# What is the difference between a local variable and a method?

# A local variable is an object. It has a value, but it does not do anything. A method is like a verb. It is something that can be done, it is an action.

# How do you run a ruby program from the command line?

# If you have your code in a file with the extention .rb, you can run the program by typing: ruby <filename.rb>.

# How do you run an RSpec file from the command line?

# If the rspec is in the same directory as the rb file, you can type rspec <filename>, and it will run the rspec file.

# What was confusing about this material? What made sense?

# The .center method was confusing to me. The idea that you have to add spaces as well as the width value seems redundant. I am also a bit confused with RSpec, but I didn't have troubles using it. Hopefully this will be cleared up after I watch the video.