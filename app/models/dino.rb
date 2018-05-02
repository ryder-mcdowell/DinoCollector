class Dino < ApplicationRecord
  belongs_to :player, optional: true
  validates :name, presence: true

  def heal(amount)
    self.health += amount
  end

  def damage(amount)
    self.health -= amount
  end

  def weaken(amount)
    self.defence -= amount
  end

  def catchable?()
    self.health < 10 && self.health != 0
  end

  def is_concious?()
    self.health > 1
  end

end
