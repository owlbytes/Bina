class AddImageToBlues < ActiveRecord::Migration
  def change
    add_column :blues, :image, :string
  end
end
