puts "How many employees are being interviewed"
interviewed = gets.to_i

while interviewed >= 1

puts "What is your name?"
name = gets.chomp

puts "How old are you?"
age = gets.to_i

puts "What year were you born?(yyyy)"
year = gets.to_i

puts "Would you like garlic bread from the cafeteria?(yes, no)"
garlic_preference = gets.chomp

puts "Would you like to enroll in the health insurance?(yes, no)"
insurance = gets.chomp

  if 2017 - year == age
    right_age = true
  else
    right_age = false
  end


  if garlic_preference == "yes"
    ok_garlic = true
  else garlic_preference == "no"
    ok_garlic = false
  end

  if insurance == "yes"
    ok_insurance = true
  else insurance == "no"
    ok_insurance = false
  end



  puts case
     when name == "Drake Cola" && "Tu Fang"
      puts "definitly a vampire"
    when right_age && ok_garlic && ok_insurance
      puts "probably not a vampire"
    when right_age && (ok_garlic && !ok_insurance)
      puts "probably a vampire"
    when right_age && (!ok_garlic && ok_insurance)
      puts "probably a vampire"
    when !right_age && (ok_garlic && ok_insurance)
      puts "probably a vampire"
    when !right_age && !ok_garlic && !ok_insurance
      puts "Almost certainly a vampire"
    else
      puts "Results inconclusive"
  end

  loop_count = 0

  loop do
    puts "Name any allergies you may have?('none' when finished)"
    allergies = gets.chomp
  if allergies == "sunshine"
    puts "probably a vampire"
    break
  elsif allergies == "none"
    puts "thank you"
    break
  end
  loop_count += 1
end

  interviewed -= 1
end

puts "Actually, never mind!! What do all these questions really mean?? Lets love one another!"