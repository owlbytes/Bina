class AddPhotoToBlooms < ActiveRecord::Migration
  def change
    add_column :blooms, :photo, :string
  end
end
