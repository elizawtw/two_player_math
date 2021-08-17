class Player
  attr_accessor :score, :name
  def initialize(name)
    @name = name
    @score = 3
  end

  def minus_score
    @score -= 1
  end

  def alive?
    @score > 0
  end  

  
end 
