class CreateActions < ActiveRecord::Migration[6.0]
  def change
    create_table :actions do |t|
      t.boolean :done
      t.references :plant, null: false, foreign_key: true
      t.references :task, null: false, foreign_key: true

      t.timestamps
    end
  end
end
