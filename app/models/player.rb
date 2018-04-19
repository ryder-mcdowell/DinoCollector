class Player < ApplicationRecord
  has_many :dinos, dependent: :destroy
  validates :name, presence: true

  def number_of_dinos
    dinos.size
  end

end
