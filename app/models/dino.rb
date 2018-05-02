class Dino < ApplicationRecord
  belongs_to :player, optional: true
  validates :name, presence: true

  def heal(amount)
    self.health += amount
  end

  def damage(amount)
    self.health -= amount
    concious?
  end

  def weaken(amount)
    self.defence -= amount
  end

  def catchable?
    self.health < 10 && self.health != 0
  end

  def concious?
    if self.health < 2
      self.concious = false
    end
  end

end
