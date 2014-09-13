class CreateVessels < ActiveRecord::Migration
  def change
    create_table :vessels do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
