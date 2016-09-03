class CreateAppellations < ActiveRecord::Migration[5.0]
  def change
    create_table :appellations do |t|
      t.string :name, :null => false
      t.references :wine_region, foreign_key: true
      t.references :state, foreign_key: true
      t.timestamps
    end
  end
end
