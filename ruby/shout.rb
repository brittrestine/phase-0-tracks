module Shout

  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yell_happily(words)
    words + " " + "yay!!!" + "<3 =-)"
  end

end

puts Shout.yell_angrily("This sucks")
puts Shout.yell_happily("I'm so happy")