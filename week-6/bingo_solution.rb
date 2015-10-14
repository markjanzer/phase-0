# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [6?] hours on this challenge.

# Release 0: Pseudocode
# Outline:
# Create a class BingoBoard
#   Initialize
#     variable @bingo_board to be equal to input, board.
#     variable bingo_arr equal to [B, I, N, G, O]
#   END
#
# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
#   DEFINE generate
#     Instance variable coords is equal to empty arrray
#     Make first value of coords equal to random number between 0 and 4.
#     Make second value a random number between 1 and 100
#     P this an array made from [bingo_arr[coords[0], coords[1]]
#   END

# Check the called column for the number called.
#   DEFINE check
#     IF bingo_board column and number match the coords,
#       set the number equal to "X"
#     END
#   P Check!

# Display a column to the console
#   DEF method named column that takes a string(Bingo letter) as an argument
#     Iterate through the board and create a new array (@column) using these values.
#     Iterate through each of these values in the column array and puts them so they are presented vertically.
#   END

# Display the board to the console (prettily)
#   DEF Display, takes no arguments, returns a pretty board.
#   P bingo_arr + bingo_board and see how it looks.
# END

# Initial Solution

# class BingoBoard

#   def initialize(board)
#     @bingo_board = board
#     @bingo_arr = [:B,:I,:N,:G,:O]
#   end

#   def generate
#     @coords = Array.new(2)
#     @coords[0] = rand(4)
#     @coords[1] = rand(100) + 1
#     p [@bingo_arr[@coords[0]].to_s, @coords[1]]
#   end

#   def check
#     @changed = false
#     @bingo_board.each do |row|
#       if row[@coords[0]] == @coords[1]
#         row[@coords[0]] = "X"
#         @changed = true
#       end
#     end
#     if @changed == true
#       p "Checked a box!"
#     else
#       p "Better luck next time!"
#     end
#   end

#   def column(letter)
#     @column_num = @bingo_arr.index(letter.intern)
#     @column = Array.new
#     @bingo_board.each do |row|
#       @column.push(row[@column_num])
#     end
#     puts "Row: #{letter.to_s}"
#     @column.each { |n| puts n }
#   end

#   def display
#     @display = [@bingo_arr.map { |sym| sym.to_s }] + @bingo_board
#     @display.each { |arr| p arr }
#   end

# end

# Refactored Solution

# This a new and improved BingoBoard!
#  NEW----------------
# It can take a board as an input when it initializes, or it can create a board of it's own. All boards created have numbers 1-15 in the first column, 16-30 in the second and so on.
# There is now a bingo_test method that checks if you won, and returns a victory string along with how many turns it took you to win.
# There is also a gen_check_bingo method that generates a coordinate, checks it against your board, checks for Bingo, and displays your board. You can give this method the number of rounds you want to play.
# There are still the generate, check, column and display methods from earlier.

# ABOUT ----------------
# Column values are stored as numbers [0,1,2,3,4], but all input and output are strings.
# @nums and @player_nums are both arrays made up of arrays of possible numbers for each column. I use these to keep track of what number has already been checked (in the case of @nums), or which number has already been added to new new_board (@player_nums).


class BingoBoard

  # I couldn't do board=new_board, probably because new_board hadn't been initialized yet, so I set board to nil. Also I couldn't set @player_nums = @nums because they would refer to the same array and make it impossible to win the game. Each of the nums are equal to an array 1..75 split into five separate 15 item arrays.
  def initialize(board=nil)
    @bingo_board = board
    @bingo_arr = ["B","I","N","G","O"]
    @nums = Array(1..75).each_slice(15).to_a
    @player_nums = Array(1..75).each_slice(15).to_a
    if @bingo_board == nil
      @bingo_board = new_board
    end
  end
  # This method is used for the new_board method. It creates a row, pulling one number from each of the appropriate arrays in @player_nums, and removing it from @player_nums so it won't be added in a later row. I thought that @player_nums[@i].shuffle.pop would not only return the last number but also pop it off from @player_nums, but it didn't seem to work that way. I ended up setting the coordinates to separate variables and using @rand_player_num to delete then number from the array.
  def make_row
    i = 0
    new_arr = []
    while i <= 4
      rand_player_num = @player_nums[i].shuffle.pop
      @player_nums[i].delete(rand_player_num)
      new_arr.push(rand_player_num)
      i += 1
    end
    return new_arr
  end

  #  new_board returns 5 new rows, created with make_row. It also sets the middle value (@bingo_board[2][2]) to "X" as it is on normal Bingo boards.
  def new_board
    @bingo_board = []
    5.times do
      @bingo_board << make_row
    end
    @bingo_board[2][2] = "X"
    return @bingo_board
  end

  #  This method selects a random row, and then picks a number from the row in a way very similar to the make_row method. It also removes the number frum @nums to prevent repeated draws. It prints the draw as an array with the column name and the number (but internally it is evaluated with column number)
  def generate
    rand_column = rand(5)
    rand_num = @nums[rand_column].shuffle.pop
    @nums[rand_column].delete(rand_num)
    @coords = [rand_column, rand_num]
    p [@bingo_arr[rand_column].to_s, rand_num]
  end

  #  Check tests the appropriate column of each row to see if the number matches.
  def check
    changed = false
    @bingo_board.each do |row|
      if row[@coords[0]] == @coords[1]
        row[@coords[0]] = "X"
        changed = true
      end
    end
    if changed == true
      p "Checked a box!"
    else
      p "Better luck next time!"
    end
  end


  def column(letter)
    column_num = @bingo_arr.index(letter)
    column = Array.new
    @bingo_board.each do |row|
      column.push(row[column_num])
    end
    puts "Column: #{letter.to_s}"
    column.each { |n| puts n }
  end

  #  Map displays @bingo_board with BINGO over the top (using @bingo_arr). It also converts every value to a string to help things stay more aligned.
  def display
    display = [@bingo_arr] + @bingo_board
    display.each do |arr|
      arr.map! do |val|
        val = val.to_s
      end
      p arr
    end
  end

  #   This nums_length function checks how many numbers there are left to pull. I use it in bingo_test to tell you how many turns it took to get Bingo.
  def nums_length
    @nums.inject(0) do |sum, arr|
      sum + arr.length
    end
  end

  #   This returns @bingo_win if there is 5 in a row.
  def bingo_test
    bingo_win = "!BINGO! !BINGO! !BINGO! !BINGO! !BINGO! It took you #{75 - nums_length} turns to win."
    @bingo_board.each do |row|
    #     Horizontal Bingo
      if row.all? { |num| num == "X" }
        return bingo_win
      end
    end
    #     Vertical Bingo
    for i in 0..4
      if @bingo_board.all? { |row| row[i] == "X" }
        return bingo_win
      end
    end
    #     Diagonal slope = -1 Bingo
    if [@bingo_board[0][0], @bingo_board[1][1], @bingo_board[3][3], @bingo_board[4][4]].uniq.length == 1
      return bingo_win
    end
    #     Diagonal slope = 1 Bingo
    if [@bingo_board[0][4], @bingo_board[1][3], @bingo_board[3][1], @bingo_board[4][0]].uniq.length == 1
      return bingo_win
    end
    return nil
  end

  #   This plays times number of rounds. Default is one round. It will generate, check, and then bingo_test each time. If bingo test yields a result (you win), then it breaks from the loop. This always displays the bingo_board afterwards.
  def gen_check_bingo(times=1)
    times.times do
      generate
      check
      bingo_test
      if bingo_test != nil
        p bingo_test
        break
      end
    end
    display
  end


end

#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE

# board = [[47, 44, 71, 8, 88],
#         [22, 69, 75, 65, 73],
#         [83, 85, 97, 89, 57],
#         [25, 31, 96, 68, 51],
#         [75, 70, 54, 80, 83]]

new_game = BingoBoard.new()
new_game.gen_check_bingo(75)
# new_game.bingo_test
# new_game.column("I")
# new_game.display
# p new_game.nums_length




#Reflection

# How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
# Psuedocoding was relatively difficult because it was hard to grasp the structure of the code that was desired for this exercise. Once I understanded the structure, the rest of the psuedocoding went smoothly. I liked the style because I could stare at the pseudocode and only have to worry about code syntax, not much problem solving necessary.

# What are the benefits of using a class for this challenge?
# You can create different games with different boards.

# How can you access coordinates in a nested array?
# You first use [#] to access the array within the array. After you use those brackets you are in, and you can follow with another set of brackets to find the desired value such as array[#1][#2].

# What methods did you use to access and modify the array?
# I only used .each to access the array and change the variables, and .map to change the array so it can be displayed better.

# How did you determine what should be an instance variable versus a local variable?
# If a variable needs to be accessed in different methods throughout an instance it should be a instance variable. If the variable was only used within one method (and thus does not need to be remembered as the program runs other methods), the variable should be a local variable. @bingo_board is an example of a variable that needs to be remembered and used across methods. new_arr (a new array to be added to then returned) or i (a counter) are examples of local variables.

# What do you feel is most improved in your refactored solution?
# I feel like the functionality of the class improved the most. I enjoyed trying to add more capabilities to the class, and I learned a lot in the process. I think in some ways my refactored code is harder to understand than the original because of the added complexity, so I used comments to help the reader.
# I learned a lot of cool things from this challenge (I finally successfully used inject, [arr].uniq.length == 1 to test if values are the same, a new for loop, random number functionality, .each_slice(#) and more). Also this challenge brought up some questions that I put in some of the comments. Overall, I am curious about best practices or if there is a cleaner way to do the same thing (perhaps with a hash?).
# If you made it this far, thanks for sticking though the lengthy code and reflections, and thank you in advance for any feedback!