class AddImageToVessels < ActiveRecord::Migration
  def change
    add_column :vessels, :image, :string
  end
end
