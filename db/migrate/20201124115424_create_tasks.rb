class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.string :name
      t.text :description
      t.integer :score
      t.float :intervalle
      t.string :category
      t.references :plant_information, null: false, foreign_key: true

      t.timestamps
    end
  end
end
