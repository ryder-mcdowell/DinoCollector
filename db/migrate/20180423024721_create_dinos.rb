class CreateDinos < ActiveRecord::Migration[5.1]
  def change
    create_table :dinos do |t|
      t.references :player, foreign_key: true
      t.string :name
      t.integer :attack
      t.integer :defence
      t.integer :health

      t.timestamps
    end
  end
end
