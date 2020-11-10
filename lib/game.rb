class Game

  attr_reader :path, :player_position

  def initialize
    @path = (0..10).to_a
    @player_position = 0
  end

  def game  # It will control the game loop
  end

  def roll_dice # roll the dice to determine the player position.
    rand(1..6)
  end

  def movement
    place = roll_dice
    @player_position += place
    @path[player_position] = "player"
  end
  

end

a = Game.new
a.movement
p a.path
p a.player_position
