class RemoveCategoryIdFromDinos < ActiveRecord::Migration[5.1]
  def change
    remove_column :dinos, :category_id, :integer
  end
end
