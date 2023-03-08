class ChangeTypeToCategoryForPlants < ActiveRecord::Migration[7.0]
  def change
    rename_column :plants, :type, :category
  end
end
