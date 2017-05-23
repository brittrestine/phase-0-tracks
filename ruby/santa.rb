class Santa

  def initialize(gender, ethinicity)
    @gender = gender
    @ethinicity = ethinicity
    @age = 0
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
  end

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie)
    puts "That was a good #{cookie}"
  end

  def celebrate_birthday
    new_age = @age + 1
    puts "Santa's age of #{@age} is now #{new_age}"
  end

  def get_mad_at(reindeer_name)
    puts @reindeer_ranking.insert(-1, @reindeer_ranking.delete_at(@reindeer_ranking.index("#{reindeer_name}")))
  end

  #getter method
  def gender
    @gender
  end

  def age
    @age
  end

  def ethinicity
    @ethinicity
  end

  #setter methods
  def gender=(new_gender)
    @gender = new_gender
  end


end

# driver code

new_santa = Santa.new("female", "n/a")
new_santa.speak
new_santa.eat_milk_and_cookies("snickerdoodle")
new_santa.celebrate_birthday
new_santa.get_mad_at("Vixen")
new_santa.gender = "women"
puts "Santa is a #{new_santa.gender}"
puts "Santa is #{new_santa.age} and her ethinicity is #{new_santa.ethinicity}"


=begin
new_santa = []
new_santa << Santa.new("agender", "black")
new_santa << Santa.new("female", "Latino")
new_santa << Santa.new("bigender", "white")
new_santa << Santa.new("male", "Japanese")
new_santa << Santa.new("female", "prefer not to say")
new_santa << Santa.new("gender fluid", "Mystical Creature (unicorn)")
new_santa << Santa.new("N/A", "N/A")

p new_santa

santas = []

example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]

example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

example_genders.length.times do |i|
  santas << Santa.new(example_genders[i], example_ethnicities[i])
end

santas.each do |santa|
  santa.speak
  santa.eat_milk_and_cookies("snickerdoodle")
  puts "-------------------------------"
end
=end


