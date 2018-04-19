class Player < ApplicationRecord
  has_many :dinos, dependent: :destroy

  def number_of_dinos
    dinos.size
  end

end
