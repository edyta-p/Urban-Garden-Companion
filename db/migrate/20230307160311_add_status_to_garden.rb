class AddStatusToGarden < ActiveRecord::Migration[7.0]
  def change
    add_column :gardens, :status, :string, default: ''
  end
end
