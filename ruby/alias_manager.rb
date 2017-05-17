#turn a spy's real name into an alias
=begin
  Pseudocode
-switch the first name of "Felicia Torres" with the last name

-change all the vowels (a,e,i,o,u) in "Felicia Torres" to the next vowel in "a,e,i,o,u"

-change all consonant into the next letter in the alphabet

-"Felicia Torres" will become "Vussit Gimodoe"

=end

=begin

def alias_manager(name)
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
      name[index] = new_letter
    end
    index += 1
  end
  name
end

puts alias_manager("FeliciaTorres")
=end

=begin
def alias_manager(first_name, last_name)
  name = (last_name + first_name)
end
=end

def alias_manager(first_name, last_name)
  name_1 = (last_name + first_name)
  name = name_1.downcase
  index = 0
  alphabet = "bcdfghjklmnpqrstvwqyz"
  vowel = "aeiou"
  while index < name.length
    if index_of_letter =  vowel.index(name[index])
     new_letter = vowel[index_of_letter + 1]
     name[index] = new_letter
   else index_of_letter = alphabet.index(name[index])
      new_letter = alphabet[index_of_letter + 1]
      name[index] = new_letter
    end
    index += 1
  end
  name
end

puts alias_manager("Felicia", "Torres")
