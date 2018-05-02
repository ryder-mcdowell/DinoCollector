class Dino < ApplicationRecord
  belongs_to :player, optional: true
  validates :name, presence: true

  def heal(amount)
    self.health += amount
    self.concious = true
  end

  def damage(amount)
    if self.health - amount <= 1
      self.health =  1
      self.concious = false
    else
      self.health -= amount
    end
  end

  def weaken(amount)
    self.defence -= amount
  end

  def catchable?
    self.health < 10 && self.health != 0
  end

end
