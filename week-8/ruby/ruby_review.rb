# I worked on this challenge by myself
# This challenge took me [#] hours.

# Pseudocode
# I believe the best way to do this would be to run the fibonacci sequence. If the given_number is less than the fibonacci number, the fibonacci sequence will continue. If it is equal, it will return true, and if the fibonacci number is greater, return false.



# Initial Solution

# def is_fibonacci?(num)
#   fib_num = 1
#   prev_num = 1
#   while (num > fib_num)
#     fib_num += prev_num
#     prev_num = fib_num - prev_num
#   end
#   return fib_num == num
# end


# Refactored Solution

def is_fibonacci?(num)
  fib_num = 2
  inc = 1
  while (num > fib_num)
    fib_num += inc
    inc += 1
  end
  fib_num == num || num == 1
end

# Reflection

# What concepts did you review or learn in this challenge?
# I learned about the fibonacci sequence, and refactoring it pushed me to think about the sequence in new ways. It was also review for Ruby Syntax.

# What is still confusing to you about Ruby?
# I am still confused about Inheritance, I think I am going to do that challenge next.

# What are you going to study to get more prepared for Phase 1?
# Inheritance and Testing! Maybe composition too, I'm not sure what that is. I think I also want to do a bit more work on CSS positioning and SQL many-to-many databases.


# Introduction to Inheritance

# I worked on this challenge by myself


# Pseudocode




# Initial Solution

class GlobalCohort
  #your code here

end

class LocalCohort
  #your code here

end


# Refactored Solution





# Reflection