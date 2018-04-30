class Dino < ApplicationRecord
  belongs_to :player, optional: true
  validates :name, presence: true

  def add_health(amount)
    self.health += amount
  end

  def remove_health(amount)
    self.health -= amount
  end

  def remove_defence(amount)
    self.defence -= amount
  end

  def catch_dino()
    self.health < 10 && self.health != 0
  end

end
