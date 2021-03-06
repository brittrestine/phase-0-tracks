# Virus Predictor

# I worked on this challenge [by myself, with: Gabriel Osborne ].
# We spent [1.5] hours on this challenge.

# EXPLANATION OF require_relative
#require_relative is a subset of require.
#r_r = to the location you are in.
#r = full address
require_relative 'state_data'

class VirusPredictor

#Initailizes all the instances
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
#plugs in the correct info for other methods
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private
#Predictes deaths uses population density to calculate the weight of the float to multiple with population. prints out "#{@state} will lose #{number_of_deaths} people in this outbreak".
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end
#takes in population density to select the seep the infection will spread. prints " and will spread across the state in #{speed} months.\n\n"
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.

    if @population_density >= 200
      speed = 0.5
    elsif @population_density >= 150
      speed = 1
    elsif @population_density >= 100
      speed = 1.5
    elsif @population_density >= 50
      speed = 2
    else
      speed = 2.5

    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

STATE_DATA.each do |states, info|
  new_state = VirusPredictor.new(states, info[:population_density], info[:population] )
  new_state.virus_effects
end



#new_state = VirusPredictor.new(  )

=begin
alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects
=end


#=======================================================================
# Reflection Section
=begin
What are the differences between the two different hash syntaxes shown in the state_data file?
  The two different syntaxes shown in the state_data are string and rocket syntax for the hashy hash and symbols for the nested hash.

What does require_relative do? How is it different from require?
  Require_relative is a subset of require. While required_relatice means the location you are in and require is the full address.

What are some ways to iterate through a hash?
  To iterate through a hash you can call that hash along with a method, such as .each, and go through eash key value parts, effecting them in the way you would like.

When refactoring virus_effects, what stood out to you about the variables, if anything?
  The variables had a local scope and could be used anywhere in the program, so to write each variable out as well as pass them as a parameter was over kill.
What concept did you most solidify in this challenge?
  How to interate through a hash while passing the key value part to the class. I was comfortable with iteration, but this was a new was to pass the information and I enjoyed learning it.