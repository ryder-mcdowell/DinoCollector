class Player < ApplicationRecord
  #attr_accessor :dinos
  has_many :dinos

  #def initialize()
  #  @in_combat = false
  #  @my_turn = false
  #  @dinos = []
  #end

  def in_combat?
    in_combat
  end

  def initiate_combat
    self.in_combat = true
  end

  def my_turn?
    my_turn
  end

  def make_turn
    self.my_turn = true
  end

  #def add_dino(dino)
  #  @dinos << dino
  #end

  def dino_count
    dinos.count
  end

end
