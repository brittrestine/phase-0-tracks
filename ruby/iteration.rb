# release 0
#method that takes a block
def coffee
  puts "I love coffee"
  yield("cafe au laits", "lattes")
end

coffee { |coffee_1, coffee_2| puts "I like #{coffee_1} and #{coffee_2}!" }

#release 1
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

#.each and .map on a hash
plant_size = {
  fern: "big",
  ivy: "medium",
  shamrock: "small"
}

plant_size.each do |type, size|
  puts "#{type}'s are #{size}."
end

plant_size = {
  fern: "big",
  ivy: "medium",
  shamrock: "small"
}

plant_size_upcase = plant_size.map do |type, size|
  puts "#{type.upcase}'s are #{size.upcase}"
end

#release 2
#find your own methods to iterate over arrays and hashs
#1.
array_1 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

array_1.delete_if { |digit| digit < 5 }

p array_1

hash_1 = {
  donuts: 1,
  apples: 2,
  bananas: 3,
  pb_cups: 4,
}

hash_1.delete_if { |name, digit| digit >= 3 }

p hash_1

#2.
array_2 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

array_2.keep_if { |digit| digit < 5 }

p array_2

hash_2 = {
  donuts: 1,
  apples: 2,
  bananas: 3,
  pb_cups: 4,
}

hash_2.keep_if { |name, digit| digit <=3 }

p hash_2

#3
array_3 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 1, 2]

array_3.select! { |digit| digit > 5 }

p array_3

hash_3 = {
  donuts: 1,
  apples: 2,
  bananas: 3,
  pb_cups: 4,
}

hash_3.select! { |name, digit| digit >=3 }

p hash_3

#4
array_4 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 1, 2]

array_4.reject! { |digit| digit <= 5  }

p array_4


hash_4 = {
  donuts: 1,
  apples: 2,
  bananas: 3,
  pb_cups: 4,
}

hash_4.reject! { |name, digit| digit >= 3 }

p hash_4