class CreatePlants < ActiveRecord::Migration[7.0]
  def change
    create_table :plants do |t|
      t.string :name
      t.string :category
      t.text :description
      t.string :climate
      t.string :exposure
      t.integer :watering
      t.text :plant_care
      t.text :picture_url

      t.timestamps
    end
  end
end
