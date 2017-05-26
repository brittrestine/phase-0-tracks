class Guess_name_game
  attr_accessor :word
  attr_accessor :feedback_str

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
        return "YAY!!!!!! YOU WON!!!!"
      else
        return "You lose sucker!"
      end
    end
end

puts "welcome to the guess word game."

=begin ***this is if we wanted it to be all user interface and not being tested

puts "Player 1 enter a word"
word = gets.chomp

=end

guessing_game = Guess_name_game.new("cat")
puts "Word as been input"

letters = []
guesses = []
turns = 0

while turns < guessing_game.word.length


  puts "player 2 take a guess"
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

  if turns == guessing_game.word.length
    puts "Out of turns"
  end

  turns += 1
end


p guessing_game.win_or_lose
