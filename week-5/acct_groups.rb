def acc_groups(arr)
  # Randomize the order of the elements in the array
  arr.shuffle!

  # Split the array into multiple 4-5 element arrays
  grouped_arr = []
  while arr.length > 0
    if arr.length % 5 == 0
      while arr.length > 0
        grouped_arr << arr.pop(5)
      end
    else
      grouped_arr << arr.pop(4)
    end
  end

  # Push the arrays into a hash and have them all be named. Then return the value of that hash and print the hash.
  acc_groups_hash = {}
  group_counter = 1
  grouped_arr.each do |a|
    acc_groups_hash["Group " + group_counter.to_s] = a
    group_counter += 1
  end
  acc_groups_hash.each { |k,v| puts "#{k}: #{v}" }
  return acc_groups_hash
end

acc_groups(lorem)

# If the cohort size is divisible by four, divisible by five, or divisible by five with a remainder of four, then we go

# The input will be this array of names. The output will be an array that contains multiple arrays, with 4-5 people in each.
# The minimum viable product is this exactly.

# For more challenge, randomize the method. I want to be able to run the method multiple times and get different groups each time.

# Sample Arrays -----------------------------------------------------
# copperheads = [
# "Joshua Abrams", "Syema Ailia", "Kris Bies", "Alexander Blair",
# "Andrew Blum", "Jacob Boer", "Steven Broderick", "Ovi Calvo",
# "Danielle Cameron", "Eran Chazan", "Jonathan Chen", "Un CHoi",
# "Kevin Corso", "Eric Dell'Aringa", "Eunice Do", "Ronny Ewanek",
# "John Paul Chaufan Field", "Eric Freeburg", "Jeffery George",
# "Jamar Gibss", "Paul Gaston Gouron", "Gabrielle Gustilo",
# "Marie-France Han", "Noah Heinrich", "Jack Huang", "Max Iniguez",
# "Mark Janzer", "Michael Jasinski", "Lars Johnson", "Joshua Kim",
# "James Kirkpatrick", "Christopher Lee", "Isaac Lee",
# "Joseph Marion", "Kevin Mark", "Bernadette Masciocchi",
# "Bryan Munroe", "Becca Nelson", "Van Phan", "John Polhill",
# "Jeremy Powell", "Jessie Richardson", "David Roberts",
# "Armani Saldana", "Chris Savage", "Parminder Singh", "Kyle Smith",
# "Aaron Tsai", "Douglas Tsui", "Deanna Warren", "Peter Wiebe",
# "Daniel Woznicki", "Jay Yee", "Nicole Yee", "Burno Zatta" ]

# lorem = "Aliquam varius mollis porttitor. Maecenas vel aliquam lectus. Aliquam sit amet consectetur dolor. Nam sed fringilla magna. Ut sapien sapien, tempor at efficitur ac, fermentum tristique justo. In venenatis id felis non pellentesque. Ut consectetur finibus tincidunt. Sed ac tortor quis lacus semper pretium. Etiam convallis lacinia dui, eu eleifend magna porta eu.".split(" ")


# What was the most interesting and most difficult part of this challenge?
# The most difficult part of the challenge was trying to figure out the logic of how to group the arrays in groups of 4 or 5 if the number of people is not divisible by four or five. I originally had a lot more while and if loops, but I was able to simplify it a bit. I also had a lot of difficulty refactoring.

# Do you feel you are improving in your ability to write pseudocode and break the problem down?
# I think that I have improved in my ability to write pseudocode, but I have also found that I prefer to pseudocode my pseudocode. I like to write out what the method is going to do before I even start outlining how the flow of the code might work.

# Was your approach for automating this task a good solution? What could have made it even better?
# My approach was pretty good. For the solution I had in mind, I think I got nailed in on the head. Perhaps I could include warnings for groups that are too small for this to work for. Also my code would have difficulty with arrays with the length of 13, 17, or 21. This would happen because if the number is not divisible by 5, it pops 4 from the array. These are numbers that would work, but you need to pop 5 first.

# What data structure did you decide to store the accountability groups in and why?
# I decided to store the accountability groups in a hash so I could assign each group a name.

# What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
# I learned about the .shuffle method (which is awesome). I also learned about .group, but I found that if I reworked my code to include it, it wouldn't make my code any shorter or easier to read (at least how I used it).
