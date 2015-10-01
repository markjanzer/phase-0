# Analyze the Errors

# I worked on this challenge by myself.
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

# "Screw you guys " + "I'm going home." = cartmans_phrase

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

# def cartman_hates(thing)
#   while true
#     puts "What's there to hate about #{thing}?"
# end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
#  errors.rb
# 2. What is the line number where the error occurs?
#  Line 170 is where the the error is detected. The error takes place around line 15/16.
# 3. What is the type of error message?
#  Syntax Error
# 4. What additional information does the interpreter provide about this type of error?
#  The interpreter expected an end but did not find one.
# 5. Where is the error in the code?
#  The interpreter sees it at the very last line of the code.
# 6. Why did the interpreter give you this error?
#  There was only one "end" in the cartman_hates method. There need to be two ends, one to end the while loop and one to end the method. Right now, the method continues to be defined until line 170, and there is still no end in sight.

# --- error -------------------------------------------------------

# south_park

# 1. What is the line number where the error occurs?
# line 35
# 2. What is the type of error message?
# NameError
# 3. What additional information does the interpreter provide about this type of error?
# south_park is an undefined local variable or method.
# 4. Where is the error in the code?
# At south_park.
# 5. Why did the interpreter give you this error?
# south_park is neither a defined variable or method, and it is not a string either so the interpreter does not know what to do with it.

# --- error -------------------------------------------------------

# cartman()

# 1. What is the line number where the error occurs?
# Line 50
# 2. What is the type of error message?
# NoMethodError
# 3. What additional information does the interpreter provide about this type of error?
# 'cartman' is an undefined method.
# 4. Where is the error in the code?
# at 'cartman'
# 5. Why did the interpreter give you this error?
# Because the code is trying to run the function cartman, but it has not yet been defined.

# --- error -------------------------------------------------------

# def cartmans_phrase
#   puts "I'm not fat; I'm big-boned!"
# end

# cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
#  Line 65
# 2. What is the type of error message?
# ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
# There is the wrong number of arguments (1 for 0) for 'cartmans_phrase'
# 4. Where is the error in the code?
# At line 69
# 5. Why did the interpreter give you this error?
# cartmans_phrase was given an argument when the method takes no arguments.

# --- error -------------------------------------------------------

# def cartman_says(offensive_message)
#   puts offensive_message
# end

# cartman_says

# 1. What is the line number where the error occurs?
# Line 84
# 2. What is the type of error message?
# ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
# Wrong number of arguments (0 for 1) for cartman_says method.
# 4. Where is the error in the code?
# Line 88
# 5. Why did the interpreter give you this error?
# Because cartman_says was called with no arguments when the method requires one argument to work.



# --- error -------------------------------------------------------

# def cartmans_lie(lie, name)
#   puts "#{lie}, #{name}!"
# end

# cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')

# 1. What is the line number where the error occurs?
# Line 105
# 2. What is the type of error message?
# ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
# cartmans_lie was given the wrong number of arguments (1 for 2).
# 4. Where is the error in the code?
# Line 109
# 5. Why did the interpreter give you this error?
# There was an error because cartmans_lie requires two arguments, but on line 109 it was only called with one.

# --- error -------------------------------------------------------

# 5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
# Line 124
# 2. What is the type of error message?
# TypeError
# 3. What additional information does the interpreter provide about this type of error?
# String can't be coerced into Fixnum.
# 4. Where is the error in the code?
# At the * in line 124
# 5. Why did the interpreter give you this error?
# Because you cannot multiply 5 times a string. If the desired effect was to repeat a string 5 times, you could switch the order of the two.

# --- error -------------------------------------------------------

# amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
# Line 139
# 2. What is the type of error message?
# ZeroDivisionError
# 3. What additional information does the interpreter provide about this type of error?
# We are dividing by zero.
# 4. Where is the error in the code?
# At the / in line 139.
# 5. Why did the interpreter give you this error?
# Because we cannot divide by zero!

# --- error -------------------------------------------------------

require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# Line 155
# 2. What is the type of error message?
# LoadError
# 3. What additional information does the interpreter provide about this type of error?
# Cannot load the file, then it gave me the path.
# 4. Where is the error in the code?
# The error was at require_relative.
# 5. Why did the interpreter give you this error?
# The interpreter gave me the error because I do not have the folder cartmans_essay.md in my week-4 directory.


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.

# Which error was the most difficult to read?

# The first error, the cartman_hates method with a while loop inside.

# How did you figure out what the issue with the error was?

# I saw that the error was found on the last line of the file, so this tipped me off to something not being closed. I read through each line of code and realized that the while loop needed an end.

# Were you able to determine why each error message happened based on the code?

# Yes I was! I think I did a decent job describing them too.

# When you encounter errors in your future code, what process will you follow to help you debug?

# I'm definitely going to look for the error type as well as the error message. It is also convinient to see both of the line #s, before I would only look at one and sometimes I wouldn't get the whole picture.