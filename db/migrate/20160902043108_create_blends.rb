class CreateBlends < ActiveRecord::Migration[5.0]
  def change
    create_table :blends do |t|
      t.string :name, :null => false

      t.timestamps
    end
  end
end
