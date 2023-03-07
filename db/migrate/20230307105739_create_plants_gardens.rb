class CreatePlantsGardens < ActiveRecord::Migration[7.0]
  def change
    create_table :plants_gardens do |t|
      t.integer :group
      t.references :plant, null: false, foreign_key: true
      t.references :garden, null: false, foreign_key: true

      t.timestamps
    end
  end
end
