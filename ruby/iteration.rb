def coffee
  puts "I love coffee"
  yield("cafe au laits", "lattes")
end

coffee { |coffee_1, coffee_2| puts "I like #{coffee_1} and #{coffee_2}!" }