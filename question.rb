require './player.rb'
require './game.rb'

class Question
  
  def initialize(player)
    @active_player = player
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    @answer = @num1 + @num2
  end

  def askQuestion
    puts "#{@active_player.name}: What does #{@num1} plus #{@num2} equal?"
    input_answer = gets.chomp.to_i
    if correct?(input_answer)
      puts "#{@active_player.name}: YES! You are correct."
      
    else
      puts "#{@active_player.name}: Seriously? No!"
      @active_player.minus_score
    end
 
  end  

  def correct?(ans)
    if ans.to_i == @answer
      return true
    end
    return false  
  end  
end

#q1 = Question.new
#puts q1.askQuestion
#puts q1.correct?(gets.chomp)
