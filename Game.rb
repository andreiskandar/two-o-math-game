require "./Player"
require "./Question"

def incorrect_answer(player)
  player.life -= 1
  player_num = player == "p1" ? "Player 1" : "Player 2"
  puts "#{player_num}: Seriously? No!" 
  puts "P1: #{p1.life}/#{p1.total_life} vs P2: #{p2.life}/#{p2.total_life}"
  puts "----- NEW TURN -----"
end

def correct_answer(player)
  player_num = player == "p1" ? "Player 1" : "Player 2"
  puts "#{player_num}: YES! You are correct."
  puts "P1: #{p1.life}/#{p1.total_life} vs P2: #{p2.life}/#{p2.total_life}"
  puts "----- NEW TURN -----"
end


class Game
  # when game instatiates, it will take p1, p2 
  attr_accessor :p1, :p2
  def initialize(p1, p2)
    @p1 = p1
    @p2 = p2
  end  

  def game_start
    game_on = true
    turn = true # player1 turn

    while(game_on)
      new_question = Question.new
      if(turn)
        puts "Player 1: #{new_question.question}"
        answer = p1.get_answer
        if(answer.to_i != new_question.answer)
          incorrect_answer(p1)
          turn = !turn
        else 
          correct_answer(p1)
          turn = !turn
        end
      else
        puts "Player 2: #{new_question.question}"
        answer = p2.get_answer
        if(answer.to_i != new_question.answer)
          incorrect_answer(p2)
          turn = !turn
        else 
          correct_answer(p2)
          turn = !turn
        end
      end
    
      game_on = p1.life > 0 && p2.life > 0
    end

    if(p1.life > 0) 
      puts "Player 1 wins with a score of #{p1.life}/#{p1.total_life}"
    else 
      puts "Player 2 wins with a score of #{p2.life}/#{p2.total_life}"
    end
    puts "----- GAME OVER ----- \nGood bye!"
  end
end

