#turn a spy's real name into an alias
=begin
  Pseudocode
-switch the first name of "Felicia Torres" with the last name

-change all the vowels (a,e,i,o,u) in "Felicia Torres" to the next vowel in "a,e,i,o,u"

-change all consonant into the next letter in the alphabet

-"Felicia Torres" will become "Vussit Gimodoe"

=end

def alias_manager(name)
  name = name.downcase
  name = name.split(" ").reverse.join(" ")
  name = name.split("")
  index = 0
  consonant = "bcdfghjklmnpqrstvwqyz"
  vowel = "aeiou"
  while index < name.length
    if
      !consonant.index(name[index]) && !vowel.index(name[index])
    elsif
      index_of_letter =  vowel.index(name[index])
      new_letter = vowel[index_of_letter + 1]
      name[index] = new_letter
    else
      index_of_letter = consonant.index(name[index])
      new_letter = consonant[index_of_letter + 1]
      name[index]= new_letter
    end
    index += 1
  end
  name.join("")
end

#user interface

name_catcher = {}

loop_counter = 0
loop do

puts "To get an alias enter a full name.(write 'quit' when finished)"
  name_1 = gets.chomp
  break if name_1 == "quit"
  name_catcher[name_1]= alias_manager(name_1)

  loop_counter =+ 1

  alias_manager(name_1)


end

name_catcher.each do |original_name, new_name|
  puts "#{new_name.split.map{|i| i.capitalize}.join(' ')} is acctually #{original_name}"
end