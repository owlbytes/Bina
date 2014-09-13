class CreateFigures < ActiveRecord::Migration
  def change
    create_table :figures do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
