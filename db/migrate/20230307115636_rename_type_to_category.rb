class RenameTypeToCategory < ActiveRecord::Migration[7.0]
  def change
    rename_column :gardens, :type, :category
    rename_column :plants, :type, :category
  end
end
