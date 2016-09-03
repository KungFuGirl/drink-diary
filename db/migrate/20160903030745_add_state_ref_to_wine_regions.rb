class AddStateRefToWineRegions < ActiveRecord::Migration[5.0]
  def change
    add_reference :wine_regions, :state, foreign_key: true
  end
end
