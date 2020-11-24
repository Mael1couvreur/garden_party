class CreatePlantInformations < ActiveRecord::Migration[6.0]
  def change
    create_table :plant_informations do |t|
      t.string :name
      t.string :family
      t.text :description
      t.text :picture

      t.timestamps
    end
  end
end
