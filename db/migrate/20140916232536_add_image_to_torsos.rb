class AddImageToTorsos < ActiveRecord::Migration
  def change
    add_column :torsos, :image, :string
  end
end
