class CreateVarietals < ActiveRecord::Migration[5.0]
  def change
    create_table :varietals do |t|
      t.string :name, :null => false
      t.boolean :is_black, :null => false

      t.timestamps
    end
  end
end
