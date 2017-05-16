# block that takes a method
def coffee
  puts "I love coffee"
  yield("cafe au laits", "lattes")
end

coffee { |coffee_1, coffee_2| puts "I like #{coffee_1} and #{coffee_2}!" }

#.each, .map and .map! on an array
plants = ["fern", "ivy", "shamrock"]

plants.each do |type|
  puts "I like #{type}'s!"
end

upcase_plants = plants.map do |type|
  puts type.upcase
end

plants.map! do |type|
  puts type.upcase
end

#.each on a hash
plant_size = {
  fern: "big",
  ivy: "medium",
  shamrock: "small"
}

plant_size.each do |type, size|
  puts "#{type}'s are #{size}."
end


