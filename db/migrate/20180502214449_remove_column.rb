class RemoveColumn < ActiveRecord::Migration[5.1]
  def change
    remove_column :dinos, :concious, :boolean
  end
end
