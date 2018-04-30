class Dino < ApplicationRecord
  belongs_to :player, optional: true
  validates :name, presence: true

  def addHealth(amount)
    self.health += amount
  end

  def removeHealth(amount)
    self.health -= amount
  end

  def removeDefence(amount)
    self.defence -= amount
  end

  def catchDino()
    self.health < 10 && self.health != 0
  end

end
