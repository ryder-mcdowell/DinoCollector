class Player < ApplicationRecord
  has_many :dinos, dependent: :destroy
  validates :name, presence: true

  POTION_STRENGTH = 30
  INSPIRE_STRENGTH = 10

  def number_of_dinos
    dinos.size
  end

  def use_potion(dino)
    self.potions -= 1
    dino.heal(POTION_STRENGTH)
  end

  def inspire_dinos
    dinos.each { |d| d.strengthen(INSPIRE_STRENGTH) }
  end

end
