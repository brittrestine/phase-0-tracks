=begin
pseudocode
-ask designer for information
  -name
  -decor theme
  -favorit color
  -likes plants
  -update
-update data if needed or user can say none to exit
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

puts "Anything you would to update?(none to exit)"
update = gets.chomp
if update == ":name"
 puts "update to"
 name_update = gets.chomp
 designer_info[:name] = name_update
elsif update == ":decor_theme"
  puts "update to"
  decor_theme_update = gets.chomp
  designer_info[:decor_theme] = decor_theme_update
elsif update == ":fav_color"
  puts "update to"
  fav_color_update = gets.chomp
  designer_info[:fav_color] = fav_color_update
elsif update == ":plants"
  puts "update to"
  plants_update = gets.chomp
  designer_info[:plants] = plants_update
else update == "none"
  puts "Thank you for you information"
end


p designer_info