class Player < ApplicationRecord
  has_many :dinos, dependent: :destroy
  validates :name, presence: true

  POTION_STRENGTH = 30

  def number_of_dinos
    dinos.size
  end

  def use_potion(dino)
    self.potions -= 1
    dino.heal(POTION_STRENGTH)
  end

end
