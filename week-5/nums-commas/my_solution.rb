# Numbers to Commas Solo Challenge

# I spent [.75] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? A positive integer
# What is the output? (i.e. What should the code return?) A positive integer with a comma separating every three didgets, counting from right to left.
# What are the steps needed to solve the problem?

# There needs to be some variable that identifies where the comma should go (this will change as commas are added), and there needs to be some length to compare to.

# DEFine method separate_comma that takes one argument, an integer.
# IF num length is greater than 3
#   insert a comma 3 characters from the end
# END
# IF num length is greater than 7 (originally with a lenghth > 6, after the comma added has a length of 7)
#   insert a comma 7 characters from the end
# END
#  Continue this forever. :D
#  Return num.

# Instead of going forever, Let's do this.
# Set variable c_c (comma counter, and a cute face) equal to 4
# WHILE num length is greater or equal to c_c
#   insert a comma at index of -c_c
#   add 4 to c_c
# END
# RETURN num


# 1. Initial Solution

def separate_comma(num)
  num = num.to_s
  c_c = 4
  while num.length >= c_c
    num.insert(-c_c, ",")
    c_c += 4
  end
  return num
end



# 2. Refactored Solution

# I had some trouble finding a destructive way to turn an integer into a string. Otherwise, I feel like I did well to be efficient in my first solution. I'm sure there are better ways to do this, but I can't think of any.



# 3. Reflection

# What was your process for breaking the problem down? What different approaches did you consider?
# I think it was essential for me to describe what the argument would do in the pseudo-code section. It helped me map out how to do this. Once I had this idea, I didn't really explore other ways to go about this. Perhaps that is something I should work on.

# Was your pseudocode effective in helping you build a successful initial solution?
# Yes, it was very helpful. I really like that I took time to say what would do with IF statements repeating forever, because this made it easy for me to refactor that into a while loop.


# What Ruby method(s) did you use when refactoring your solution? What difficulties did you have implementing it/them? Did it/they significantly change the way your code works? If so, how?
# I didn't actually implement any others while refactoring the solution. I did learn a new method, insert, while I was learning about how to solve this. I was considering many different methods of inserting the commas, but after looking around the ruby docs, this one proved to be most effective. The ruby doc for insert was very simple and informative, so I had no issues, I just tested it on coderpad first. I don't think it changed how my code works, but it is the most essential part of my code, so doing it efficiently and quickly is fantastic.


# How did you initially iterate through the data structure?
# I changed the number to a string, and then I only checked with the num.length. I moved through the structure with the changing variable.


# Do you feel your refactored solution is more readable than your initial solution? Why?

# I am curious as to how I can refactor my solution. I looked through the ruby docs and didn't see anything that looked appealing.