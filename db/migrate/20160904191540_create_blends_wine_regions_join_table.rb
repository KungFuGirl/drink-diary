class CreateBlendsWineRegionsJoinTable < ActiveRecord::Migration[5.0]
  def change
    create_table :blends_wine_regions, id: false do |t|
      t.integer :blend_id
      t.integer :wine_region_id
    end
  end
end
