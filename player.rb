class Player

  attr_reader :name
  attr_accessor :lives

  def initialize(name)
    @name = name
    @lives = 3
  end

  def alive? 
    @lives > 0
  end

  def lose_life
    @lives -= 1
  end

end