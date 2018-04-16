class Player
  attr_accessor :dinos

  def initialize()
    @in_combat = false
    @dinos = []
  end

  def in_combat?
    @in_combat
  end

  def dino_count
    @dinos.count
  end

end
