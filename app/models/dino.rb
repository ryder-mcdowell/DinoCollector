class Dino < ApplicationRecord
  belongs_to :player
  validates :name, presence: true

  def addHealth(health)
    self.health += health
  end

  def removeHealth(health)
    self.health -= health
  end

end
