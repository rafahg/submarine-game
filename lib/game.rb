class Game

  attr_reader :path

  def initialize
    @path = (1..10).to_a
  end

  def game  # It will control the game loop
  end

  def roll_dice # roll the dice to determine the player position.
    rand(1..6)
  end

  def movement
  end
  

end

p a = Game.new