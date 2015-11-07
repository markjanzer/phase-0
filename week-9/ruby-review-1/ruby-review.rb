# Create a Car Class from User Stories


# I worked on this challenge with Jeremy


# 2. Pseudocode
#   -create a new class, called car
#     intialize car class with model and color as arguments
#       set instance varaibles reference above
#   -maybe writer attr? or method for "distance"
#   -reader attr for speed
#   -create methods for turning left and right
#   -writer method for speed(acc attr combine with 3rd)
#   -create reader variable that totals distance travelled
#   -create stop method. set speed = 0
#   -reader attr for "last action" and place at each action?
#     (or push all actions committed to moves array that is printable, last action would pull last element of moves array)

#     methods needed:
#     -left turn
#     -right turn
#     decelertate
#     accelerate
#     stop
#     distance  (drive this far, at this speed, output distance travlled)

#    mycar.drive(distance, speed)
#     change distancetravelled
#     mycar.speed = speed


#     mycar.accelerate(speed)
#     mycar.stop()
#     mycar.distance_travelled()

# 3. Initial Solution

# class Car
#   def initialize(model, color, toppings)
#     @model = model
#     @color = color
#     @distance_travelled = 0
#     @moves = []
#     @thisPizza = Pizza.new(toppings)
#   end

#   attr_reader :model, :color, :distance_travelled, :thisPizza
#   attr_accessor :speed

#   def distance(miles)
#     @distance_travelled += miles
#   end

#   def left
#     @moves << "Turn Left"
#   end

#   def right
#     @moves << "Turn Right"
#   end

#   def drive(miles, mph)
#     distance(miles)
#     @speed = mph
#     @moves << "Drove #{miles} miles at #{mph} mph"
#   end

#   def stop
#     @speed = 0
#     @moves << "Stop"
#   end

#   def last_action
#     @moves[-1]
#   end

# end

# class Pizza
#   def initialize(toppings)
#     @toppings = toppings
#   end
#   attr_reader :toppings
# end

# 4. Refactored Solution

# Print function for drive history
# Make speed optional argument
# Fix issues with setting speed

class Car
  def initialize(model, color, toppings)
    @model = model
    @color = color
    @distance_travelled = 0
    @moves = []
    @thisPizza = Pizza.new(toppings)
  end

  attr_reader :model, :color, :distance_travelled, :thisPizza
  attr_accessor :speed

  def distance(miles)
    @distance_travelled += miles
  end

  def left
    @moves << "Turn Left"
  end

  def right
    @moves << "Turn Right"
  end

  def drive(miles, mph=@speed)
    if mph == 0
      return p "You cant drive at 0 MPH!"
    end
    distance(miles)
    @speed = mph
    @moves << "Drove #{miles} miles at #{mph} mph"
  end

  def stop
    @speed = 0
    @moves << "Stop"
  end

  def last_action
    @moves[-1]
  end

  def drive_history
    @moves.map.with_index{|x,i| p "Action \# #{i+1} : #{x}"}
  end
end

class Pizza
  def initialize(toppings)
    @toppings = toppings
  end
  attr_reader :toppings
end




# 1. DRIVER TESTS GO BELOW THIS LINE

# Create a new car of your desired model and type
myCar = Car.new("Lambo","Blue","Pepperoni")
# Drive .25 miles (speed limit is 25 mph)
myCar.drive(0.25, 25)
# At the stop sign, turn right
myCar.stop
myCar.right
# Drive 1.5 miles (speed limit is 35 mph)
myCar.drive(1.5,35)
# At the school zone, check your speed
p myCar.speed
# Slow down to speed limit 15 mph
myCar.speed=15
# Drive .25 miles more miles
myCar.drive(0.25)
# At the stop sign, turn left
myCar.stop
myCar.left
# Drive 1.4 miles (speed limit is 35 mph)
myCar.drive(1.4,35)
# Stop at your destination
myCar.stop
# Log your total distance travelled
p myCar.distance_travelled
p myCar.thisPizza.toppings
myCar.drive_history



# 5. Reflection
# What concepts did you review in this challenge?
# This challenge reviewed creation of classes.

# What is still confusing to you about Ruby?
# Symbols are still a little confusing. I need to see more examples of situations in which symbols work best, and I need to see why.

# What are you going to study to get more prepared for Phase 1?
# I'm going to study a framework for CSS and HTML. Like Boostrap, but I might do Foundation instead.