puts "what is the hamster's name?"
input1 = gets.chomp

puts "How loud do you want your hamster to be (squeak volume 1-10)"
input2 = gets.to_i

puts "what color would you like your hamster?(brown, white, gray, black, beige)"
input3 = gets.chomp


if input3 == "white"
  input3 = "white as snow"
elsif input3 == "gray"
  input3 = "grayson"
elsif input3 == "black"
  input3 = "black as night"
else
  input3 = input3
end

puts "Is this hams a good candidate for adoption?(y/n)"
input4 = gets.chomp
if input4 == "y"
  input4 = "adoptable"
elsif input4 == "n"
  input4 = "not adoptable"
else input4 == "nil"
  input4 = "not sure if it is a good candidate for adoption"
end

puts "what is the estimated age of the hamster?(1, 2, 3 or N/A)"
input5 = gets.to_i

if input5 == 1
  input5 = "1 year old"
elsif input5 == 2
  input5 = "2 years old"
elsif input5 == 3
  input5 = "3 years old"
else input5 == "nil"
  input5 = "unsure of its age"
end



def hamster_info(input1, input2, input3, input4, input5)
  puts "Welcome #{input1}, your noise level is #{input2} and your color is #{input3}. This hamster is #{input4}, and is #{input5}."
end

hamster_info(input1, input2, input3, input4, input5)