# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================
puts array[1][1][2][0]


# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================
# puts hash[outer][inner]["almost"][3]
# puts hash[outer:][inner:]["almost"][3]
puts hash[:outer][:inner]["almost"][3]

# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================
puts nested_data[:array][1][:hash]


# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

number_array.map! do |val|
  if val.class==Array
    val.map! { |v| v += 5 }
  else
    val += 5
  end
end

p number_array




# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]
# startup_names.map! do |name|
#   if name.class==Array
#     name.map! do |n|
#       if n.class==Array
#         n.map! {|s| s + "ly"}
#       else
#         n + "ly"
#       end
#     end
#   else
#     name + "ly"
#   end
# end
# p startup_names

def addly(array)
  array.map! do |name|
    if name.class==Array
      addly(name)
    else
      name + "ly"
    end
  end
  return array
end

p addly(startup_names)


# Reflection
# What are some general rules you can apply to nested arrays?
# You can find the nested array the same way you find a normal array, using the [#]. To open the nested array, you first have to find where in the larger array it is, and start by opening with [#]. You link these brackets together to get to the desired value.

# What are some ways you can iterate over nested arrays?
# You can use an each method to run over the larger array, and then say if |var| is an array, run an each method on that. You can also create a recursive method that will keep going deeper so you can deal with any depth of arrays.

# Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?
# The .class == Array was very useful to find if a value was an array. I revisited .map for the first time in a while because it has a nice destructive method, while it was difficult to make the .each array destructive. Also the map method was very much what we wanted, changing an array into another array.