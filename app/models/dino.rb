class Dino < ApplicationRecord
  belongs_to :player, optional: true
  validates :name, presence: true

  def addHealth(health)
    self.health += health
  end

  def removeHealth(health)
    self.health -= health
  end

  def removeDefence(amount)
    self.defence -= amount
  end

end
