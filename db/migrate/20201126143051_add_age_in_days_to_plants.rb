class AddAgeInDaysToPlants < ActiveRecord::Migration[6.0]
  def change
    add_column :plants, :age_in_days, :integer
  end
end
