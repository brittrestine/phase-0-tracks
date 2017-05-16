=begin
pseudocode
-ask designer for information
  -name
  -decor theme
  -favorit color
  -likes plants
  -update
-convert designers input to data type
-print out hash
=end

designer_info = {

}

puts "what is your name?"
name = gets.chomp
designer_info[:name] = name

puts "what decor theme would you like?"
decor_theme = gets.chomp
designer_info[:decor_theme] = decor_theme

puts "Whats your favorite color?"
fav_color = gets.chomp
designer_info[:fav_color] = fav_color

puts "would you like plants?(yes or no)"
plants = gets.chomp
designer_info[:plants] = plants

puts "would you like to update anything?"
update = gets.chomp
designer_info[:update] = update

p designer_info