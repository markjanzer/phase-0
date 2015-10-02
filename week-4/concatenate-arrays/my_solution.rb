# Concatenate Two Arrays

# I worked on this challenge by myself.


# Your Solution Below

def push_array(arr, destination)
  arr.each { |x| destination.push(x) }
end

def array_concat(array_1, array_2)
  newArr = []
  push_array(array_1, newArr)
  push_array(array_2, newArr)
  return newArr
end