class CreateWines < ActiveRecord::Migration[5.0]
  def change
    create_table :wines do |t|
      t.string :name, :null => false
      t.string :producer
      t.integer :review_for_photo_id
      t.references :country, foreign_key: true
      t.references :wine_type, foreign_key: true
      t.references :wine_region, foreign_key: true   
      t.references :state, foreign_key: true      
      t.references :appellation, foreign_key: true      

      t.timestamps
    end
  end
end
