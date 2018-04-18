class AddPlayerIdToDinos < ActiveRecord::Migration[5.1]
  def change
    add_column :dinos, :player_id, :integer
  end
end
