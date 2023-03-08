class AddPlantCategoriesToGarden < ActiveRecord::Migration[7.0]
  def change
    add_column :gardens, :plant_categories, :string, array: true, default: []
  end
end
