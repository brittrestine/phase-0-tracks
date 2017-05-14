=begin
  encrypt pseudocode
-pass a string into an method as the argument.
-take that string and look through every letter of the string
-for ever letter of the string move forward to the next letter of the alphabet

  decrypt pseudocode
-pass a string through as a argument to a method
-take that string and look at every letter
-every letter of that string needs go back one index.

=end

#encrypt method that take in a string and moves every letter of that string forward once letter
def encrypt(str)
  index = 0
  #loop over the strings letters and advance each letter to the next
  while index < str.length
    if str[index] == "z"
      str[index] = "a"
    else
     str[index] = str[index].next
    end
  index += 1
 end
  puts str
end

# decrypt method that take every letter of a string and gots back one letter of the alphabet
def decrypt(str)
 index = 0
 alphabet = "abcdefghijklmnopqrstuvwxyz"
 #loop over the string letters and got back one letter of the alphabet
  while index < str.length
    index_of_letter = alphabet.index(str[index])
    new_letter = alphabet[index_of_letter - 1]
    str[index] = new_letter
    index += 1
  end
  puts str
end

# decrypt(encrypt("a")) - this works because you are talking the encrypt("a") and passing it through the decrypt method


#-ask the user for if they want thier password to be decrypt or encrypt
puts "Would you like to encrypt or decrypt your password?"
 encrypt_or_decrypt = gets.chomp



#-ask the user for a password
puts "what would you like your password to be?"
 password = gets.chomp


#-if the user wants their password to be encrypt
if encrypt_or_decrypt == "encrypt"
  #-put the password through the encrypt helper_method
  puts encrypt(password)
else #-if the user wants their password to be decrypt
#-put the password through the decrypt method
  puts decrypt(password)
end


