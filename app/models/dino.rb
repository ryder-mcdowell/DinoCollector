class Dino < ApplicationRecord
  belongs_to :player, optional: true
  validates :name, presence: true

  def scuffle(enemy_dino)
    enemy_dino.damage(self.attack)
    self.damage(enemy_dino.attack)
  end

  def heal(amount)
    self.health += amount
    concious?
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
    if self.health <= 1
      self.concious = false
    else
      self.concious = true
    end
  end

end
