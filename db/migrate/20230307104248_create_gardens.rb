class CreateGardens < ActiveRecord::Migration[7.0]
  def change
    create_table :gardens do |t|
      t.string :name
      t.string :category
      t.float :width
      t.float :length
      t.string :exposure
      t.float :longitude
      t.float :latitude

      t.timestamps
    end
  end
end
