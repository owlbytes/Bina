class CreateTorsos < ActiveRecord::Migration
  def change
    create_table :torsos do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
