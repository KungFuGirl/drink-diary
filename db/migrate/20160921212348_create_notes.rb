class CreateNotes < ActiveRecord::Migration[5.0]
  def change
    create_table :notes do |t|
      t.references :user, foreign_key: true
      t.string :text_note
      t.integer :rating, :null => false
      t.date :date
      t.integer :sweetness_rating
      t.string :purchase_location

      t.integer :price
      t.string :currency

      t.timestamps
    end
  end
end
