class Player
  attr_accessor :dinos

  def initialize()
    @in_combat = false
    @my_turn = false
    @dinos = []
  end

  def in_combat?
    @in_combat
  end

  def initiate_combat
    @in_combat = true
  end

  def my_turn?
    @my_turn
  end

  def add_dino(dino)
    @dinos << dino
  end

  def dino_count
    @dinos.count
  end

end
