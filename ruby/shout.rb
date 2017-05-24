=begin
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
=end

module Shouts
  def yelling(words)
    "OMG!!!" + words + "!!!!!"
  end
end

class Programmers
  include Shouts
end

class Sports_Fans
  include Shouts
end

new_programmer = Programmers.new
puts new_programmer.yelling("look what I did")
new_sports_fan = Sports_Fans.new
puts new_sports_fan.yelling("Yes, we are winning")