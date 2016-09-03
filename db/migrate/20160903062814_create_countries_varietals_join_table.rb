class CreateCountriesVarietalsJoinTable < ActiveRecord::Migration[5.0]
  def change
    create_table :countries_varietals, id: false do |t|
      t.integer :country_id
      t.integer :varietal_id
    end
  end
end
