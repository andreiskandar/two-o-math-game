require "./Game"
require "./Player"
p1 = Player.new
p2 = Player.new

game1 = Game.new(p1, p2)
game1.game_start