require './player.rb'
require './question.rb'

class Game
  def initialize
    @player1 = Player.new('Eliza')
    @player2 = Player.new('Sienna')
    
  end

  def start
    
    active_player = @player1
    while keep_playing? do
      new_Question = Question.new(active_player)
      new_Question.askQuestion
      puts "#{@player1.name}: #{@player1.score}/3 vs #{@player2.name}: #{@player2.score}/3"
      
      if active_player.score > 0
        puts "---- NEW TURN ----"
      end  

      if active_player == @player1
        active_player = @player2
      else
        active_player = @player1
      end
 
    end
    puts "---- Game Over ----"
    game_winner = winner
    puts "#{winner.name} has won the game!"
    puts "Good bye!"
  end  
  

  def keep_playing?
    if @player1.alive? && @player2.alive?
      return true
    else
      return false
    end    
  end  
  
  def winner
    if @player1.score > @player2.score
      return @player1
    else
      return @player2
    end    
  end  

end