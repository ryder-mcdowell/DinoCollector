class Player < ApplicationRecord
  has_many :dinos, dependent: :destroy

  def dino_count
    dinos.count
  end

end
