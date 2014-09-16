class AddImageToFigures < ActiveRecord::Migration
  def change
    add_column :figures, :image, :string
  end
end
