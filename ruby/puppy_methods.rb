=begin
class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(num_of_bark)
    bark = "woof"
    speak = (bark * num_of_bark)
    puts speak
  end

  def roll_over(trick)
    puts trick
  end

  def dog_years(human_age)
    dogs_age = human_age * 7
    puts dogs_age
  end

  def stay(wait)
    puts "I am #{wait}ing!"
  end

  def initialize
    puts "Initializing new puppy instance ..."
  end

end

#driver code

#  This would be if we wanted every instance (Puppy member) to be able to use these method

Puppy.new.fetch("ball")
Puppy.new.speak(4)
Puppy.new.roll_over("*rolls over*")
Puppy.new.dog_years(7)
Puppy.new.stay("stay..........")


# This is if we want one instance, Augie, member of the Puppy(species) class to do be able to use these methods
Augie = Puppy.new
Augie.fetch("ball")
Augie.speak(4)
Augie.roll_over("*rolls over*")
Augie.dog_years(7)
Augie.stay("stay...........")
=end

class Plants

  def initialize
    puts "Initializing new plant instance..."
  end

  def light(sun)
    puts "Needs #{sun}."
  end

  def water(x)
    puts "Water #{x} time a week."
  end

end

fern = Plants.new
fern.light("bright, indirect light")
fern.water(1)

plant_arr = []

num = 0
type_of_plants = 50

while num < type_of_plants
  new_plants = Plants.new
  plant_arr << new_plants

  num += 1
end

plant_arr.each do |type|
 type.light("bright, indirect light")
 type.water(1)
end
