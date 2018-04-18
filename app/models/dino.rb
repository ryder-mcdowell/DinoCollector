class Dino < ApplicationRecord
  belongs_to :player

  def addHealth(health)
    self.health += health
  end

  def removeHealth(health)
    self.health -= health
  end

end
