class Guess_name_game

  def initialize(word)
    under_line = "_" + " "
   @word = word.downcase
   @feedback_str = under_line * @word.length
  end

  def letter_guessed(letter)
    @word.chars.each_with_index do |letter_in_word, index|
      if letter == letter_in_word
        @feedback_str[index * 2 ] = letter
      end
    end
    if !@word.include?(letter)
      puts "Sorry try again"
    end
      @feedback_str
  end

    def win_or_lose
      new_word = @word.split("")
      new_word.map! { |char| char + " " }
      new_word = new_word.join("")
      if new_word == @feedback_str
        puts "\nYAY!!!!!! YOU WON!!!!"
      else
        puts "\nYou lose sucker!"
      end
    end
end

puts "welcome to the guess name game."

puts "\nPlayer 1, input a word"
word = gets.chomp

guessing_game = Guess_name_game.new(word)


letters = []
guesses = []
turns = 0

while turns < word.length

  puts "\nPlayer 2, guess a letter of the hidden word"
  letter = gets.chomp

  letters.each do |char|
    while char == letter
      puts "You've tried that letter already, enter a new letter."
      letter = gets.chomp
    end
  end
    letters << letter

  guesses << guessing_game.letter_guessed(letter)

  puts "You guessed #{guesses.last}"

  if turns == word.length
    puts "\nOut of turns"
  end

  turns += 1
end


guessing_game.win_or_lose