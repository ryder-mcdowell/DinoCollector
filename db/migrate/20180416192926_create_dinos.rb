class CreateDinos < ActiveRecord::Migration[5.1]
  def change
    create_table :dinos do |t|
      t.string :name
      t.string :attack
      t.string :defence
      t.string :health

      t.timestamps
    end
  end
end
