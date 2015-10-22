# Class Warfare, Validate a Credit Card Number


# I worked on this challenge with Michael Jasinksi
# I spent 1.25 hours on this challenge.

# Pseudocode

# Input:  16 digits of a possible credit card number
# Output: boolean or Argument Error
# Steps:
# Initialization 16 digits
# Raise ArgumentError for anything less than 16 digits long
# push digits onto an array
# insert commmas to create standalone numbers
# iterate over every other number to double it
# Make double-digit numbers into 2 one-digit numbers
# Add the total then dive by ten
# If divisible by ten return true
# If not divisible  by 10 return false

# Initial Solution

# class CreditCard
#   def initialize(number)
#     @number = number
#     unless number.to_s.length == 16
#       raise ArgumentError.new("16 digits please")
#     end
#   end

#   def check_card
#     array = @number.to_s.split("").map {|x| x.to_i}
#      new_array = []
#     array.each_index do |x|
#       if x % 2 == 0
#         new_array.push(array[x] * 2)
#       else
#         new_array.push(array[x])
#       end
#     end
#     new_array.map! do |x|
#       if x > 9
#         x.to_s.split("").map {|x| x.to_i}
#       else
#         x
#       end
#     end
#     if new_array.flatten.reduce(:+) % 10 == 0
#       return true
#     else
#       return false
#     end
#   end
# end



# Refactored Solution

class CreditCard

  def initialize(number)
    @number = number
    unless number.to_s.length == 16
      raise ArgumentError.new("16 digits please")
    end
  end

  def check_card

    @array = @number.to_s.split("").map(&:to_i)
# create an array with each digit as a separate element

    @new_array = []
# create empty array into which each element will be pushed

    @array.each_index do |x|
      if x % 2 == 0
        @new_array.push(@array[x] * 2)
# double the even indices and push to new array

      else
        @new_array.push(@array[x])
# push the odd indices to the new array

      end
    end

    @new_array.map! do |x|
      if x > 9
        x.to_s.split("").map(&:to_i)
# split double digit numbers into an array of two single-digit numbers, this makes the array two dimensional

      else x
      end
    end

    return @new_array.flatten.reduce(:+) % 10 == 0
# flatten the 2D array and reduce with addition to get the cumulative sum

  end
end

one_card = CreditCard.new(4563960122001999)
p one_card.check_card
two_card = CreditCard.new(4663960122001999)
p two_card.check_card

# Reflection
=begin
What was the most difficult part of this challenge for you and your pair?
For us I think it was coming to terms with the fact that we couldn't
get the Fixnum to split into separate one digit numbers.  We had to
turn the Fixnum into a string and separate the characters of the
string and then turn the separate strings back into integers.
What new methods did you find to help you when you refactored?
We found the each_slice method, but decided not to use it.  We needed
to split by even indices, but each_slice separates by grouping.  We
could have used it by pushing the even indices onto a separate array,
but it would have been defactoring.
What concepts or learnings were you able to solidify in this challenge?
I feel like I definitely get the idea of how to use map much better now.
This is going to be a useful one, so the more familiar I get the better.
=end