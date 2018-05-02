class AddConciousToDinos < ActiveRecord::Migration[5.1]
  def change
    add_column :dinos, :concious, :boolean, default:true
  end
end
