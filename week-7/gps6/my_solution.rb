# Virus Predictor

# I worked on this challenge with: Ryan Smith.
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# require_relative is used to access a file within the same directory as the file # it is being called in. 
# Require has additional funcionality that can load  #additional features from the Ruby library.

require_relative 'state_data'

class VirusPredictor
  
# This method takes 3 arguments and stores the values of them as instance #variables.

  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
  
# Calls the predicted_deaths methods and speed_of_spread method using the #instance variables as arguments. 
# It will return the speed_of_spread string

  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private
  
# The method is testing the poputation_density instance variable to test the  #range and sets the number_of_deaths variable
# to the states population times a #certain factor depending on the range. The floor method rounds the vaule down to 
# the nearest integer. The method will print out a string.

  def predicted_deaths
    # predicted deaths is solely based on population density 
    # if @population_density >= 200
    #   number_of_deaths = (@population * 0.4).floor
    # elsif @population_density >= 150
    #   number_of_deaths = (@population * 0.3).floor
    # elsif @population_density >= 100
    #   number_of_deaths = (@population * 0.2).floor
    # elsif @population_density >= 50
    #   number_of_deaths = (@population * 0.1).floor
    # else
    #   number_of_deaths = (@population * 0.05).floor
    # end

    #########
    # Population density => associated factor
    factors = {200 => 0.4, 150 => 0.3, 100 => 0.2, 50 => 0.1}
    
    # Default value for number of deaths
    number_of_deaths = (@population * 0.05).floor
    # Use a different factor if the pop. density is 50 or more
    factors.each do |density, factor|
      if @population_density >= density
        number_of_deaths = (@population * factor).floor
        break
      end
    end  
    print "#{@state} will lose #{number_of_deaths} people in this outbreak"
  end
  
# Set the default speed value to 0. It looks for the range then adds a certain value to the speed based on the range. 
# This method returns a string.

  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    # if @population_density >= 200
    #   speed += 0.5
    # elsif @population_density >= 150
    #   speed += 1
    # elsif @population_density >= 100
    #   speed += 1.5
    # elsif @population_density >= 50
    #   speed += 2
    # else
    #   speed += 2.5
    # end
    
    additional_speed = {200 => 0.5, 150 => 1, 100 => 1.5, 50 => 2}
    
    addon = 2.5
    additional_speed.each do |density, addend| 
      if @population_density >= density
        addon = addend
        break
      end
    end
  
    speed += addon

    puts " and will spread across the state in #{speed} months.\n\n"
  end
end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects

STATE_DATA.each do |state, data|
  VirusPredictor.new(state, data[:population_density], data[:population]).virus_effects
end


#=======================================================================
# Reflection Section
# 1. What are the differences between the two different hash syntaxes shown in the state_data file?
# The first hash syntax is using the state as a string for the key, the hash rocket, and a sub hash. The sub uses
# symbols as keys and numbers for the values.

# 2. What does require_relative do? How is it different from require?
# require_relative is used to access a file within the same directory as the file it is being called in. Require has
# additional functionality that can load additional features from the Ruby library.

# 3. What are some ways to iterate through a hash?
# You can iterate through a hash by setting two arguments in the pipes in the code block and returning the
# needed value.

# 4. When refactoring virus_effects, what stood out to you about the variables, if anything?
# When refactoring the variables stood out because they were instances variables that were already set in the initialize method. 

# 5. What concept did you most solidify in this challenge?
# My pair explained iterating through a hash in a way that made sense. This helped solidify hash iteration. 
