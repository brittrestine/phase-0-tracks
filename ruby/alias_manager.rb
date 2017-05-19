#turn a spy's real name into an alias
=begin
  Pseudocode
-switch the first name of "Felicia Torres" with the last name

-change all the vowels (a,e,i,o,u) in "Felicia Torres" to the next vowel in "a,e,i,o,u"

-change all consonant into the next letter in the alphabet

-"Felicia Torres" will become "Vussit Gimodoe"

=end

def alias_manager(first_name, last_name)
  name = (last_name + first_name)
  name = name.downcase
  index = 0
  alphabet = "bcdfghjklmnpqrstvwqyz"
  vowel = "aeiou"
  while index < name.length
    if index_of_letter =  vowel.index(name[index])
     new_letter = vowel[index_of_letter + 1]
     name[index] = new_letter
   else index_of_letter = alphabet.index(name[index])
      new_letter = alphabet[index_of_letter + 1]
      name[index]= new_letter
    end
    index += 1
  end
  name
  yield(name)# Problem! I want to pass the result of this method to my hash for the value
end

#user interface

#aliass = {}#Problem! I really want my data structure to be a hash so it can hold the original 'name' as the key and the 'name_1' as the value. I dont know how to add the value from a method

loop_counter = 0
loop do
  puts "To get an alias enter a first name?('quit' when finished)"
  name_1 = gets.chomp
  #aliass << name_1#Problem I want to pass this to my hash as the key


  if name_1 == "quit"
    puts "Thanks for using alias manager!"
    break
  end

  puts "Enter a last name"
  name_2 = gets.chomp
  #aliass << name_2#Problem I want to pass this to my hash as the key

  loop_counter =+ 1

 #Problem! I want this to print outside my loop so it doesn't print after you enter a name, but if I copy and paste this outside the loop it cant find the 'name' variale. The block wont be necessary if I could pass the value to the hash
puts alias_manager(name_1, name_2) { |name| puts "#{name.capitalize} is actually #{name_1.capitalize} #{name_2.capitalize}"}

end


