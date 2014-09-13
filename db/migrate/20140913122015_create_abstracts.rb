class CreateAbstracts < ActiveRecord::Migration
  def change
    create_table :abstracts do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
