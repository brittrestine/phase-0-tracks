# Array Drills

zombie_apocalypse_supplies = ["hatchet", "rations", "water jug", "binoculars",
                              "shotgun", "compass", "CB radio", "batteries"]

# 1. Iterate through the zombie_apocalypse_supplies array,
# printing each item in the array separated by an asterisk
# ----

zombie_apocalypse_supplies.each { |supplies| puts "*#{supplies}" }

# 2. In order to keep yourself organized, sort your zombie_apocalypse_supplies
# in alphabetical order. Do not use any special built-in methods.
# ----
zombie_apocalypse_supplies.map! do |type|
  type.upcase.downcase
end

zombie_apocalypse_supplies.each_index do |supplies_one|
  zombie_apocalypse_supplies.each_index do |supplies_two|
    if zombie_apocalypse_supplies[supplies_one] < zombie_apocalypse_supplies[supplies_two]
       zombie_apocalypse_supplies[supplies_one], zombie_apocalypse_supplies[supplies_two] = zombie_apocalypse_supplies[supplies_two], zombie_apocalypse_supplies[supplies_one]
    end
  end
end
puts zombie_apocalypse_supplies

# 3. Create a method to see if a particular item (string) is in the
# zombie_apocalypse_supplies. Do not use any special built-in methods.
# For instance: are boots in your list of supplies?
# ----
def search_for_item(zombie_apocalypse_supplies, item)
zombie_apocalypse_supplies.each do |supplies|
  if supplies == "#{item}"
    puts "yes"
  else
    puts "no"
  end
end
end

search_for_item(zombie_apocalypse_supplies, "compass")


# 4. You can't carry too many things, you've only got room in your pack for 5.
# Remove items in your zombie_apocalypse_supplies in any way you'd like,
# leaving only 5. Do not use any special built-in methods.
# ----



zombie_apocalypse_supplies -= ["shotgun"]
zombie_apocalypse_supplies -= ["CB radio"]
zombie_apocalypse_supplies -= ["batteries"]

p zombie_apocalypse_supplies

# 5. You found another survivor! This means you can combine your supplies.
# Create a new combined supplies list out of your zombie_apocalypse_supplies
# and their supplies below. You should get rid of any duplicate items.
# Find the built-in method that helps you accomplish this in the Ruby
# documentation for Arrays.
other_survivor_supplies = [ "warm clothes", "rations", "compass", "camp stove",
                            "solar battery", "flashlight"]
# ----

new_zombie_apocalypse_supplies = (zombie_apocalypse_supplies.push + other_survivor_supplies.push)
new_zombie_apocalypse_supplies = new_zombie_apocalypse_supplies.uniq
p new_zombie_apocalypse_supplies


# Hash Drills

extinct_animals = {
  "Tasmanian Tiger" => 1936,
  "Eastern Hare Wallaby" => 1890,
  "Dodo" => 1662,
  "Pyrenean Ibex" => 2000,
  "Passenger Pigeon" => 1914,
  "West African Black Rhinoceros" => 2011,
  "Laysan Crake" => 1923
}

# 1. Iterate through extinct_animals hash, printing each key/value pair
# with a dash in between the key and value, and an asterisk between each pair.
# ----

extinct_animals.each do |animal, year|
  print "#{animal} - #{year} * "
end



# 2. Keep only animals in extinct_animals if they were extinct before
# the year 2000. Do not use any special built-in methods.
# ----
extinct_animals.each do |animal, year|
  if year < 2000
    puts "#{animal} - #{year}"
  end
end


# 3. Our calculations were completely off, turns out all of those animals went
# extinct 3 years before the date provided. Update the values in extinct_animals
# so they accurately reflect what year the animal went extinct.
# Do not use any special built-in methods.
# ----

extinct_animals.each do |animal, year|
  puts "#{animal} - #{year - 3}"
end


# 4. You've heard that the following animals might be extinct, but you're not sure.
# Check if they're included in extinct_animals, one by one:
# "Andean Cat"
# "Dodo"
# "Saiga Antelope"
# Do not use any special built-in methods.
# ----
def in_extinct_animals(extinct_animals, a, b, c)
 if extinct_animals[a] != nil
    puts "#{a} is in the list"
  else
    puts "#{a} isn't in the list"
  end
  if extinct_animals[b] != nil
    puts "#{b} is in the list"
  else
    puts "#{b} isn't in the list"
  end
  if extinct_animals[c] != nil
    puts "#{c} is in the list"
  else
    puts "#{c} isn't in the list"
  end
end

in_extinct_animals(extinct_animals, "Andean Cat", "Dodo", "Saiga Antelope")

# 5. We just found out that the Passenger Pigeon is actually not extinct!
# Remove them from extinct_animals and return the key value pair as a two item array.
# Find the built-in method that helps you accomplish this in the Ruby documentation
# for Hashes.
# ----

p extinct_animals.to_a.at(4)
extinct_animals.delete("Passenger Pigeon")
p extinct_animals
