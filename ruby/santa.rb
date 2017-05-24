class Santa
  attr_reader :gender, :age
  attr_accessor :ethnicity

  def initialize(gender, ethnicity)
    puts "creating a new santa"
    @gender = gender
    @ethnicity = ethnicity
    @age = 0
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
  end

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie)
    puts "That was a good #{cookie}"
  end
=begin
  def celebrate_birthday
    new_age = @age + 1
    puts "Santa's age of #{@age} is now #{new_age}"
  end
=end
  def get_mad_at(reindeer_name)
    puts @reindeer_ranking.insert(-1, @reindeer_ranking.delete_at(@reindeer_ranking.index("#{reindeer_name}")))
  end

  #setter methods
  def gender=(new_gender)
    @gender = new_gender
  end

  def age=(new_age)
    @age = new_age
  end

end

# driver code
=begin
new_santa = Santa.new("female", "n/a")
new_santa.speak
new_santa.eat_milk_and_cookies("snickerdoodle")
new_santa.celebrate_birthday
new_santa.get_mad_at("Vixen")
new_santa.gender = "women"
puts "Santa is a #{new_santa.gender}"
puts "Santa is #{new_santa.age} and her ethnicity is #{new_santa.ethnicity}"


new_santa = []
new_santa << Santa.new("agender", "black")
new_santa << Santa.new("female", "Latino")
new_santa << Santa.new("bigender", "white")
new_santa << Santa.new("male", "Japanese")
new_santa << Santa.new("female", "prefer not to say")
new_santa << Santa.new("gender fluid", "Mystical Creature (unicorn)")
new_santa << Santa.new("N/A", "N/A")
=end

num = 0
santas = 200

while num < santas

  genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]

  ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]


new_santas = Santa.new(genders.sample, ethnicities.sample)
new_santas.age = rand(0...140)
puts "This Santas age is #{new_santas.age}"
puts "This Santas gender is #{new_santas.gender}"
puts "This Santas ethnicity is #{new_santas.ethnicity}"
puts "___________________________"
num += 1

end

