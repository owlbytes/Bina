class AddImageToBlooms < ActiveRecord::Migration
  def change
    add_column :blooms, :image, :string
  end
end
