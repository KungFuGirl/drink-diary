class CreateBlendsCountriesJoinTable < ActiveRecord::Migration[5.0]
  def change
    create_table :blends_countries, id: false do |t|
      t.integer :blend_id
      t.integer :country_id
    end
  end
end
