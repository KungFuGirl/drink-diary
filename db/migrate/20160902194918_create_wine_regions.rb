class CreateWineRegions < ActiveRecord::Migration[5.0]
  def change
    create_table :wine_regions do |t|
      t.string :name, :null => false
      t.references :country, foreign_key: true
      
      t.timestamps
    end
  end
end
