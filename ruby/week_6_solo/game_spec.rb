require_relative 'game'

describe Guess_name_game do
    let(:guessing_game) {Guess_name_game.new("Cat")}

    it "Stores the word givin" do
      expect(guessing_game.word).to eq "cat"
      expect(guessing_game.feedback_str).to eq "_ _ _ "
    end
    it "Receives a letter, looks through the word for the letter. If the letter is in the word, feedback_str is updated to that letter. If letter isn't in word put 'sorry try again'. Returns feedback_str" do
      expect(guessing_game.letter_guessed("c")).to eq "c _ _ "
    end
    it "Splits each charater of the word into an array. Then changes each charater to charater plus a space and joins back together. if word is equal to feedback_str puts 'YAY!! You win!' else puts 'You lose sucker!'" do
      expect(guessing_game.win_or_lose).to eq "You lose sucker!"
    end
end

=begin
  I tested everything inside my class. I didn't test my driver code (I'm not sure if that is possible, I will look up) because all my driver code is being worked through the instance methods I tested already. Without my driver code my instance methods could not be tested the way I needed them to be. So there for driver code is fine, right?
=end