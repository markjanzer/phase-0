# # Virus Predictor

# # I worked on this challenge with Becca Nelson
# # We spent 2 hours on this challenge.

# # EXPLANATION OF require_relative
# # Tells the program to look for a file relative to the current file's location. Does not require the file to be a website. require_relative is followed by the path to the file.
# #
require_relative 'state_data'

# class VirusPredictor

#   # Initialize allows you to create a new instance of the VirusPredictor class, which takes three arguments--a string, a float, and an integer.  These arguments become instance variables so they can be used in multiple methods.
#   def initialize(state_of_origin, population_density, population)
#     @state = state_of_origin
#     @population = population
#     @population_density = population_density
#   end

#   # This method calls the predicted_deaths and speed_of_spread methods, which are defined below.
# #   def virus_effects
# #     predicted_deaths(@population_density, @population, @state)
# #     speed_of_spread(@population_density, @state)
# #   end

#   def virus_effects
#     predicted_deaths
#     speed_of_spread
#   end

#   private

#   # It is creating multiple equations based on the population density that calculates the predicted deaths.  Deaths and population density are directly corollated.  It prints the result.

#   def predicted_deaths
#     # predicted deaths is solely based on population density
#     if @population_density >= 200
#       number_of_deaths = (@population * 0.4).floor
#     elsif @population_density >= 150
#       number_of_deaths = (@population * 0.3).floor
#     elsif @population_density >= 100
#       number_of_deaths = (@population * 0.2).floor
#     elsif @population_density >= 50
#       number_of_deaths = (@population * 0.1).floor
#     else
#       number_of_deaths = (@population * 0.05).floor
#     end

#     print "#{@state} will lose #{number_of_deaths} people in this outbreak"

#   end

#   # This method uses the population density to determine the speed of spread.  If the population density is higher, the virus spreads more quickly.  The result is printed in months.

#   def speed_of_spread
#     # in months
#     # We are still perfecting our formula here. The speed is also affected
#     # by additional factors we haven't added into this functionality.
#     speed = 0.0

#     if @population_density >= 200
#       speed += 0.5
#     elsif @population_density >= 150
#       speed += 1
#     elsif @population_density >= 100
#       speed += 1.5
#     elsif @population_density >= 50
#       speed += 2
#     else
#       speed += 2.5
#     end

#     puts " and will spread across the state in #{speed} months.\n\n"

#   end

# end

# #=======================================================================

# # DRIVER CODE
#  # initialize VirusPredictor for each state


# # alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# # alabama.virus_effects

# # jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# # jersey.virus_effects

# # california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# # california.virus_effects

# # alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# # alaska.virus_effects




#=======================================================================
# Reflection Section

class VirusPredictor


  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end


  def virus_effects
    predicted_deaths
    speed_of_spread
    return "#{@state} will lose #{@number_of_deaths} people in this outbreak and will spread across the state in #{@speed} months.\n\n"
  end

  private


  def predicted_deaths


#     density = 50
#     percentage = 0.1

#     until density == 200
#       if @population_density >= density
#         number_of_deaths = (@population * percentage).floor
#         density += 50
#         percentage += 0.1
#         puts density
#       else number_of_deaths = (@population * 0.05).floor
#       end
#     end

#       until density >= 200
#         density += 50
#         percentage += 0.1
#       end
#       density += 500
#     end
#     number_of_deaths = (@population * percentage).floor



    if @population_density >= 200
      @number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      @number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      @number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      @number_of_deaths = (@population * 0.1).floor
    else
      @number_of_deaths = (@population * 0.05).floor
    end


  end

  # This method uses the population density to determine the speed of spread.  If the population density is higher, the virus spreads more quickly.  The result is printed in months.

  def speed_of_spread
    # in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    @speed = 0.0

    if @population_density >= 200
      @speed += 0.5
    elsif @population_density >= 150
      @speed += 1
    elsif @population_density >= 100
      @speed += 1.5
    elsif @population_density >= 50
      @speed += 2
    else
      @speed += 2.5
    end

  end

end


def national_virus_effects(data_source)
  data_source.each do |state, info|
    state_name = VirusPredictor.new(state, info[:population_density], info[:population])
    puts state_name.virus_effects
  end
end

national_virus_effects(STATE_DATA)

# Reflection
# What are the differences between the two different hash syntaxes shown in the state_data file?
# The first hash syntax uses strings as keys and the nested hash uses symbols as keys. Symbols make it so the array does not have to use 50 different population_density objects, one for each state.

# What does require_relative do? How is it different from require?
# require_relative allows you to pull information from another file. require also lets you do this, the difference is in the pathing. require_relative paths from the directory that contains the current file while require paths from the base (maybe it's called the root directory? not sure).

# What are some ways to iterate through a hash?
# You can use each and include both the key and the value in the ||. There are plenty of other enumerables you can use!

# When refactoring virus_effects, what stood out to you about the variables, if anything?
# Initially, the variables were halves of a string. They kind of destroyed the data (speed and number_of_deaths) that were created in the individual methods and returned a half of a string.

# What concept did you most solidify in this challenge?
# I made large progress on the concept of constants. I never really understood them, but Lorena's explanation along with my own research and rehashing really helped me understand what they are and how they can be used.