class AddPotionsToPlayer < ActiveRecord::Migration[5.1]
  def change
    add_column :players, :potions, :int
  end
end
