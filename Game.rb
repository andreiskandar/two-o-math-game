require "./Player"
require "./Question"


class Game
  # when game instatiates, it will take p1, p2 
  attr_accessor :p1, :p2
  def initialize(p1, p2)
    @p1 = p1
    @p2 = p2
  end
  
  game_on = @p1.life
  # while()

  # while each player has life
    # generate questions
    # get players' answer
    # assess answers
    # track the lives from each player
  
end

p1 = Player.new
p2 = Player.new
q = Question.new
puts q.question
puts "p1 #{p1.life}"
puts "p2 #{p2.total_life}"