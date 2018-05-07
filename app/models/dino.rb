class Dino < ApplicationRecord
  belongs_to :player, optional: true
  validates :name, presence: true

  CATCHABLE_HEALTH = 10

  def scuffle(enemy_dino)
    return false unless self.concious
    enemy_dino.damage(self.attack)
    self.damage(enemy_dino.attack)
  end

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

  def strengthen(amount)
    self.defence += amount
  end

  def weaken(amount)
    self.defence -= amount
  end

  def catchable?
    self.health <= CATCHABLE_HEALTH
  end

end
