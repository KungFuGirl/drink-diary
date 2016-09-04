class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.references :user, foreign_key: true
      t.references :wine, foreign_key: true
      t.attachment :photo
      t.date :date
      t.integer :vintage
      t.integer :rating
      t.integer :price
      t.string :currency
      t.timestamps
    end
  end
end
