class CreateVarietalsWineRegionsJoinTable < ActiveRecord::Migration[5.0]
  def change
    create_table :varietals_wine_regions, id: false do |t|
      t.integer :varietal_id
      t.integer :wine_region_id
    end
  end
end
