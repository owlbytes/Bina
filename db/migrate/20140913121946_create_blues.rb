class CreateBlues < ActiveRecord::Migration
  def change
    create_table :blues do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
