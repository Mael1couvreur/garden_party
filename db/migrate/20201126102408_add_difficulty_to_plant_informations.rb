class AddDifficultyToPlantInformations < ActiveRecord::Migration[6.0]
  def change
    add_column :plant_informations, :difficulty, :string
    add_column :plant_informations, :sunlight, :string
    add_column :plant_informations, :water, :string
    add_column :plant_informations, :min_room_temperature, :integer
    add_column :plant_informations, :max_room_temperature, :integer
    add_column :plant_informations, :start_growth_month, :string
    add_column :plant_informations, :end_growth_month, :string
  end
end
