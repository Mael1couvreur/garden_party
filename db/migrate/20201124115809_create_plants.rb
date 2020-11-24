class CreatePlants < ActiveRecord::Migration[6.0]
  def change
    create_table :plants do |t|
      t.string :nickname
      t.integer :like_number
      t.references :user, null: false, foreign_key: true
      t.references :plant_information, null: false, foreign_key: true

      t.timestamps
    end
  end
end
